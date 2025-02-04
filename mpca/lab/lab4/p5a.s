.text
	LDR R0,=A
	LDR R1,=B
	LDR R2,=C
	
	MOV R6,#3
	MOV R7,#0

	LOOP:
		LDR R3,[R0],#4
		LDR R4,[R1],#4
		MUL R3,R4,R3

		ADD R7,R7,R3
		SUBS R6,R6,#1
		BNE LOOP
	STR R7,[R2]
	SWI 0X011
		


.data
	A: .word 1,2,3
	B: .word 4,5,6
	C: .word 0