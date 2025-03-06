# WEEK-5 Questions : 06-03-2025

## Q1. Matrix Multiplication
Write an ALP using ARM7TDMI to multiply two matrix
```assembly
.DATA
	A: .WORD 1,2,3,4,5,6,7,8,9
	B: .WORD 1,2,3,4,5,6,7,8,9
	C: .WORD 0,0,0,0,0,0,0,0,0

.TEXT
	LDR R0,=A
	LDR R1,=B
	LDR R2,=C
    
	MOV R3,#0  ;INNER LOOP COUNT I INDEX
	MOV R4,#0  ;OUTER LOOP COUNT J INDEX
	MOV R10,#3 ; NUMBER OF ELEMENTS IN A ROW
	MOV R8,#0 ;VALUE OF K
	
LOOP1:MLA R11,R3,R10,R8
      MOV R11,R11,LSL #2
	  LDR R5,[R0,R11]  
	  MLA R12,R8,R10,R4
      MOV R12,R12,LSL #2
	  LDR R6,[R1,R12]
	  
	  MUL R11,R5,R6 ; REGISTER R11 IS REUSED.
	  ADD R9,R9,R11
	  
	  ADD R8,R8,#1    ; INCREMENT K  INNERMOST LOOP
	  CMP R8,#3
	  BNE LOOP1 
	  
	  MLA R12,R3,R10,R4     ; STORE THE IN C[I][J]
      MOV R12,R12,LSL #2
	  STR R9,[R2,R12]
	  
	  MOV R8,#0       ; K=0
	  MOV R9,#0       ; C[I][J]=0
	  ADD R4,R4,#1
	  CMP R4,#3
      BNE LOOP1
	  MOV R4,#0
	  ADD R3,R3,#1
	  CMP R3,#3
	  BNE LOOP1
	  SWI 0X011 
.END

```

## Q2. String Length
Write an ALP using ARM7TDMI to find the length of string
```assembly
.text
	LDR R0,=A
	MOV R5,#0
	
	LOOP:
		LDRB R1,[R0],#1
		CMP R1,#0
		ADDNE R5,R5,#1
		BNE LOOP
	SWI 0X011
.data
	A: .ASCIZ "ABCDEFGHIJJ"
```

## Q3. Pattern Matching
Write an ALP using ARM7TDMI to find the substring present or not.
```assembly
.text
	LDR R0,=A
	LDR R1,=B
	
	MOV R2,#11                ; text length(n)
	MOV R3,#3		  ; pattern length(m)
	SUB R4,R2,R3              ; R4 = n-m

	MOV R5,#0                 ; j 
	MOV R8,#0                 ; i
	
	LOOP:
		CMP R4,#0
		
		BEQ FAIL

		MOV R5,#0         
		CMP R5,R3
		BLT WLOOP
	CONTINUE:
		CMP R5,R3
		BEQ EXIT
		
		CMP R8,R4
		ADDLT R8,R8,#1
		BLT LOOP 
		B FAIL
		
		
	EXIT:
		LDR R0,=C
		SWI 0X02	
		SWI 0X011
	FAIL:
		MOV R8,#-1
		LDR R0,=D
		SWI 0X02
		B EXIT
	WLOOP:
		LDRB R10,[R1,R5]
		ADD R9,R5,R8
		LDRB R11,[R0,R9]
		CMP R11,R10
		ADDEQ R5,R5,#1
		BEQ WLOOP
		B CONTINUE
	
	

.data
	A: .ASCIZ "ABCDEFGHIJJ"
	B: .ASCIZ "DEF"
	C: .ASCIZ "Substring Present"
	D: .ASCIZ "Not Present"
```



## Q4. Swap first and last charcter of string
Write a program to swap the first and last character of a given string.
Example:
Input: ‘dog’
Output: ‘god’

```assembly
.text
    LDR R0, =A        
    SWI 0x02          

    MOV R1, R0        

FIND_END:
    LDRB R2, [R0], #1 
    CMP R2, #0        
    BNE FIND_END      

    SUB R0, R0, #2    
    LDRB R3, [R0]     
    LDRB R4, [R1]     
    STRB R3, [R1]     
    STRB R4, [R0]     

    LDR R0,=A
    SWI 0x02          
    SWI 0x011         

.data
A: .ASCIZ "Hello"

```
