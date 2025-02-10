.text
	MOV R0,#3           ; No. of rows
	MOV R1,#4           ; No. of cols

	LDR R2,=A
	MOV R3,#0           ; SUM
	
	MOV R4,#1           ; inp: 2nd row
	MOV R5,R1
	MUL R6,R4,R1
	ADD R2,R2,R6, LSL #2	

	Loop:
		LDR R7,[R2]
		ADD R3,R3,R7
		ADD R2,R2,#4

		SUBS R1,R1,#1
		BNE Loop
	SWI 0x011



.data
	A: .word 5,6,4,2
	   .word 8,9,0,12
           .word 1,4,6,9
	