.text
	LDR R0,=A
	LDR R1,=B
	LDR R2,=C

	LDR R3,[R0]
	LDR R4,[R1]

	CMP R3,R4
	BGT LOOP
	CONTINUE:
		STR R3,[R2]
	SWI 0X011


	LOOP:
		SUB R3,R3,R4
		CMP R3,R4
		BGE LOOP
		B CONTINUE	



.data
	A: .word 10
	B: .word 3
	C: .word 0