# LAB-4 Questions : 23-01-2025

## 1. Find the Remainder of a Number
Write an ALP using ARM7TDMI to find the remainder of a number (e.g., `10 / 3`, remainder is `1`).

```assembly
.DATA
 A: .word 10
 B: .word 3
```

---

## 2. Linear Search in an Array (half_word)
Write an ALP using ARM7TDMI to search for an element in an array of 16-bit integers using the linear search technique.

```assembly
.DATA
A: .hword 1,2,3,4,5,6,7,8,9
```

---

## 3. Block Data Transfer (128 Bytes)
Write an ALP using ARM7TDMI to copy a block of **128 bytes** of data from **location A to location B** using `LDM` and `STM` instructions, considering a **data transfer rate of 16 bytes**.  

Additionally, perform the same transfer using **auto-indexing**.

```assembly
.DATA
 A: .word 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32  
 B: .word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0  
```

---

## 4. Matrix Indexing and Address Calculation
Write an ALP using ARM7TDMI to find the **index of an element** in a matrix arranged in **row-major order** when given the **coordinates of the element**. Also, compute the **address of the indexed element** using the `MLA` instruction.

```assembly
.DATA
 A: .word 1,2,3,4,5,6,7,8,9
```
---

## 5. Convolution Operation
### a) Using `MUL` Instruction
Write an ALP using ARM7TDMI to perform **convolution** by multiplying corresponding numbers from **location A and location B** and summing the results.

### b) Using `MLA` Instruction
Write an ALP using ARM7TDMI to perform **convolution** using the `MLA` instruction (multiply and accumulate) for numbers from **location A and location B**.

```assembly
.DATA
  A: .word 1,2,3
  B: .word 4,5,6
  C: .word 0
```
---

## 6. Sum of BCD Digits in a 32-bit Number
Write an ALP using ARM7TDMI to compute the **sum of all BCD digits** of a given **32-bit number**.  
*(Hint: 788 = 7 + 8 + 8)*

