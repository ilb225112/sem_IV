# LAB-5 Questions : 7-02-2025
---
## 1. Generate a 3x3 Matrix in Column Major Order
### **Problem Statement:**
Write an ALP using ARM7TDMI to generate a 3x3 matrix storing natural numbers in **column-major order**.

 **Before Execution:**
```assembly
MATA: .WORD 0,0,0,0,0,0,0,0,0
```
**After Execution:**
```assembly
MATA: .WORD 1,4,7,2,5,8,3,6,9
```



## 2. BCD Sum
### **Problem Statement:**
Write an ALP using ARM7TDMI to find the sum of 2 bcd numbers in a function using stack parameter passing technique


## 3. Transpose of a matrix
### **Problem Statement:**
Write an ALP using ARM7TDMI to find the transpose of a matrix.

**Before**
```assembly
matrix:         .word   1, 2, 3       ;Original 3x3 matrix
                .word   4, 5, 6
                .word   7, 8, 9

transpose:     .word   0, 0, 0       ;Space for transposed matrix
               .word   0, 0, 0
               .word   0, 0, 0
```
**After**
```assembly
  transpose:     .word   1, 4, 7       ;Space for transposed matrix
                          .word   2, 5, 6
                          .word   3, 6, 9
```


## 4.Smallest BCD number
### **Problem Statement:**
Write an ALP using ARM7TDMI to find the smallest of all the BCD digits of a given 32bit number.
(hint: If R1=78415374 the smallest  digit is 1)


## 5.Row SUM
### **Problem Statement:**
Write an ALP using ARM7TDMI to find the sum of all elements for a given row number if size of matrix is mxn.


## EXTRA
### **Problem Statement:**
Write an ALP using ARM7TDMI to  copy a block 400 bytes of data from location A to location B if the rate of data transfer rate is 40 bytes, LDM and STM instructions.
                                          and 
For the same transfer the block with auto-indexing.

