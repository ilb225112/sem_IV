import os
import nbformat
import re
from nbconvert import PDFExporter

# 💡 Set your desired PDF name here (no need to add .pdf)
custom_name = "SRN"

def extract_lab_number(filename):
    match = re.search(r'lab(\d+)\.ipynb', filename)
    return int(match.group(1)) if match else float('inf')

base_dir = os.getcwd()

# Collect .ipynb files from first-level subdirs
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
    print("No notebooks found.")
    exit()

# Merge notebooks
merged_nb = None
for _, path in notebooks:
    with open(path, 'r', encoding='utf-8') as f:
        nb = nbformat.read(f, as_version=4)
        if merged_nb is None:
            merged_nb = nb
        else:
            merged_nb.cells.extend(nb.cells)

# Export to PDF with custom name
try:
    pdf_exporter = PDFExporter()
    pdf_data, _ = pdf_exporter.from_notebook_node(merged_nb)
    with open(f"{custom_name}.pdf", "wb") as f:
        f.write(pdf_data)
    print(f"✅ PDF created: {custom_name}.pdf")
except Exception as e:
    print("❌ PDF conversion failed. Make sure TeX and pandoc are installed.")
    print(e)
