import json
import os
from pathlib import Path

OUTPUT_FILENAME = "SRN_NAME.ipynb"

def merge_ipynb_files(output_file):
    current_dir = Path(os.getcwd())  # Get the current working directory
    subdirs = [d for d in current_dir.iterdir() if d.is_dir()]  # List first-level subdirectories
    
    merged_notebook = {"cells": [], "metadata": {}, "nbformat": 4, "nbformat_minor": 4}

    for subdir in subdirs:
        ipynb_files = list(subdir.glob("*.ipynb"))  # Find all .ipynb files in the subdir

        for file in ipynb_files:
            with open(file, "r", encoding="utf-8") as f:
                notebook = json.load(f)
                merged_notebook["cells"].extend(notebook.get("cells", []))

    # Save the merged notebook in the current directory
    if merged_notebook["cells"]:
        with open(output_file, "w", encoding="utf-8") as f:
            json.dump(merged_notebook, f, indent=2)
        print(f"Merged {len(merged_notebook['cells'])} cells into {output_file}")
    else:
        print("No .ipynb files found in subdirectories.")

if __name__ == "__main__":
    merge_ipynb_files(OUTPUT_FILENAME)
