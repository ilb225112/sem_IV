.text
	LDR R0,=A
	MOV R1,#10
	LDR R3,=POS
	LDR R4,=NEG

	LOOP:
		LDR R2,[R0]
		CMP R2,#0
		BGE P
		B   N
	CONT:
		ADD R0,R0,#4
		SUBS R1,R1,#1
		BNE LOOP
	SWI 0X011
	

	P:
		STR R2,[R3]
		ADD R3,R3,#4
		B CONT
	N:
		STR R3,[R4]
		ADD R4,R4,#4
		B CONT


.data
	A: .word 1,2,3,4,-1,5,-2,-3,-6,0
	POS: .word 0,0,0,0,0,0,0,0,0,0
	NEG: .word 0,0,0,0,0,0,0,0,0,0	



