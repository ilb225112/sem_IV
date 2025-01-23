## LAB-3 Questions : 23-01-25
---

### 1. Multiplication of 16x31
Write an ALP using ARM7TDMI to perform multiplication of 16x31 without using `mul` instructions.
(Hint: barrel shifter instructions.)

### 2. Classify Numbers as Positive or Negative
Write an ALP using ARM7TDMI to classify the given set of numbers as positive or negative and also store them in different memory locations.

```assembly
.data
A: .word 1,2,3,4,-1,5,-2,-3,6,0
POS: .word 0,0,0,0,0,0,0,0,0,0
NEG: .word 0,0,0,0,0,0,0,0,0,0
```
### 3. Sum of Negative Numbers
Write an ALP using ARM7TDMI to add only negative numbers stored in memory location for a given set of numbers and store the sum of negative numbers in the memory location.
```assembly
Array: .word 1,2,3,4,-1,5,-2,-3,6,0
negsum: .word
```

### 4. Find Smallest Number
Write an ALP using ARM7TDMI to find the smallest number from a given set of numbers.
```assembly
A: .word 10,50,41,55,30,20,11,5,100,77
```

### 5. Generate Fibonacci Series
Write an ALP using ARM7TDMI to generate Fibonacci series of n numbers and store it in the memory location.

### 6. Multiplication of 32x50
Write an ALP using ARM7TDMI to perform multiplication of 32x50 without using mul instructions. (Hint: barrel shifter instructions.) (Note: any number can be considered as multiplier)
