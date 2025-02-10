.text
	LDR R0,=A
	LDR R1,[R0]

	MOV R2,R1
	MOV R3,#0x0000000F
	MOV R4,#9     ; result	(initialized with max value)
	
	LOOP:
		AND R5,R3,R2
		CMP R5,R4
		MOVLT R4,R5
		
		MOVS R2,R2,LSR #4
		BNE LOOP
	SWI 0x011

	
		

.data
	A: .word 0x78415374