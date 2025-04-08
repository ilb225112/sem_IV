## STEP 1: Clone Only proj_2 Folder

To clone only the `proj2` folder (without downloading the entire repo), run:

```bash
git clone --filter=blob:none --no-checkout https://github.com/ilb225112/sem_IV.git
cd sem_IV
git sparse-checkout init --cone
git sparse-checkout set la/proj_2
git checkout

```

## Additional 💡:
__Do u have python and want to merge all .ipynb files?__
  - just run
    ```bash
    python merger.py
    ```
  - It will ask for srn (basically merged file ka name)
  - Once entered it saves the merged notebook with your SRN as the filename

## Final :
  - Use any online website/tool to convert the .ipynb file to .pdf

> ⚠️ **Note:**  
> Do **not** run the merged `.ipynb` file.  
> You may run the individual files, as all dependencies are in the same folder.

