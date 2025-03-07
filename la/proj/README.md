## STEP1 :
To Clone this repository run:
```code
git clone --depth 1 --filter=blob:none --sparse https://github.com/ilb225112/sem_IV.git
```

```code
cd sem_IV
```

```code
git sparse-checkout set la/proj
```

## STEP 2:
-> Have python and copying and merging makes you tired
-> In  merge_notebooks.py 
```python
OUTPUT_FILENAME = "SRN_NAME.ipynb" # Change "SRN_NAME" to your desired filename
``` 
-> Run the script :
- Windows
```cmd
python merge_notebooks.py
```

- macOS/Linux
```cmd
python3 merge_notebooks.py
```

### Credit:
  The idea of using python script was totally stolen from Paddhariya Mohit Kaushik👻😬
