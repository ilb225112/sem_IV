.text
	LDR R0,=A
	MOV R1,#9
	LDR R2,[R0]
	MOV R3,#0
	ADD R0,R0,#4

	LOOP:
		LDR R3,[R0]
		CMP R2,R3
		BGT Move
	CONT:
		ADD R0,R0,#4
		SUBS R1,R1,#1
		BNE LOOP
	SWI 0X011

	Move: 
		MOV R2,R3
		B CONT	
	

.data
	A: .word 10,50,41,55,30,20,11,5,100,77