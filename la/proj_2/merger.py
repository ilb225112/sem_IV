import subprocess
import sys
import os
import nbformat
import re

# Auto install missing packages
def install(package):
    try:
        __import__(package)
    except ImportError:
        print(f"📦 Installing missing package: {package} ...")
        try:
            subprocess.check_call([sys.executable, "-m", "pip", "install", package])
        except subprocess.CalledProcessError as e:
            print(f"❌ Failed to install {package}: {e}")
            sys.exit(1)

install("nbformat")
install("nbconvert")  # Used even if not directly in the script, might be needed later

# Ask for SRN
srn = input("Enter your SRN: ").strip()
if not srn:
    print("❌ SRN cannot be empty.")
    sys.exit(1)

def extract_lab_number(filename):
    match = re.search(r'lab(\d+)\.ipynb', filename)
    return int(match.group(1)) if match else float('inf')

base_dir = os.getcwd()

notebooks = []
for root, _, files in os.walk(base_dir):
    for file in files:
        if file.endswith(".ipynb") and file.startswith("lab"):
            full_path = os.path.normpath(os.path.join(root, file))
            notebooks.append((extract_lab_number(file), full_path))

notebooks.sort()

if not notebooks:
    print("❌ No notebooks found.")
    sys.exit(1)

# Merge notebooks
merged_nb = None
for _, path in notebooks:
    with open(path, 'r', encoding='utf-8') as f:
        nb = nbformat.read(f, as_version=4)
        if merged_nb is None:
            merged_nb = nb
        else:
            merged_nb.cells.extend(nb.cells)

# Save merged notebook
output_file = f"{srn}.ipynb"
with open(output_file, 'w', encoding='utf-8') as f:
    nbformat.write(merged_nb, f)

print(f"✅ Merged notebook saved as: {output_file}")
