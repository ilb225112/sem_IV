import subprocess
import sys

# Auto install missing packages
def install(package):
    try:
        __import__(package)
    except ImportError:
        print(f"📦 Installing missing package: {package} ...")
        subprocess.check_call([sys.executable, "-m", "pip", "install", package])

install("nbformat")
install("nbconvert")

import os
import nbformat
import re

def extract_lab_number(filename):
    match = re.search(r'lab(\d+)\.ipynb', filename)
    return int(match.group(1)) if match else float('inf')

base_dir = os.getcwd()

notebooks = []
for subdir in os.listdir(base_dir):
    full_path = os.path.join(base_dir, subdir)
    if os.path.isdir(full_path):
        for file in os.listdir(full_path):
            if file.endswith(".ipynb") and file.startswith("lab"):
                path = os.path.join(full_path, file)
                notebooks.append((extract_lab_number(file), path))

notebooks.sort()

if not notebooks:
    print("❌ No notebooks found.")
    sys.exit()

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
output_file = "merged_notebooks.ipynb"
with open(output_file, 'w', encoding='utf-8') as f:
    nbformat.write(merged_nb, f)

print(f"✅ Merged notebook saved as: {output_file}")
