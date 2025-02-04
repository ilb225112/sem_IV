.text
	LDR R0,=A
	LDR R1,=B	
	LDR R2,[R0]

	MOV R3,#0
	MOV R4,#0x000F
	MOV R5,#4

	LOOP:
		AND R6,R2,R4
		ADD R3,R3,R6
		MOV R2,R2,LSR #4
		CMP R2,#0
		BNE LOOP 
	
	STR R3,[R1]
	SWI 0X011


.data
	A: .word 0x0788
	B: .word 0