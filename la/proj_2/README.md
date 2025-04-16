## STEP 1: Clone Only proj_2 Folder

To clone only the `proj2` folder (without downloading the entire repo), run:

```bash
git clone --filter=blob:none --no-checkout https://github.com/ilb225112/sem_IV.git
cd sem_IV
git sparse-checkout init --cone
git sparse-checkout set la/proj_2
git checkout
cd la
cd proj_2

```

## Additional 💡:
__Do u have python and want to merge all .ipynb files?__
  - just run
    ```bash
    python merger.py
    ```
    OR
    ```bash
    python3 merger.py
    ```
  - It will ask for srn (basically merged file ka name)
  - Once entered it saves the merged notebook with your SRN as the filename.
    <br>
### **Note:**  If u see an error like this
  ![WhatsApp Image 2025-04-16 at 09 32 26_1ccb75a1](https://github.com/user-attachments/assets/7b5d25e8-2f16-499d-a296-42a733ae8ed9)<br>
  run :
  ```bash
    pip install nbformat
  ```
 and rerun python file.
## Final :
  - Use any online website/tool to convert the .ipynb file to .pdf

> ⚠️ **Note:**  
> Do **not** run the merged `.ipynb` file.  
> You may run the individual files, as all dependencies are in the same folder.

