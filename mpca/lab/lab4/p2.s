.text
	LDR R1,=A
	LDR R2,=B
	
	LDRH R3,[R2]
	MOV R4,#9
	
	LOOP:
		LDRH R5,[R1]
		ADD R1,R1,#2
		CMP R5,R3
		BEQ STORE
		SUBS R4,R4,#1
		BNE LOOP
	EXIT:	
		SWI 0X011
	

	STORE:
		MOV R9,#1		
		B EXIT
	

.data
	A: .hword 1,2,3,4,5,6,7,8,9
	B: .hword 3
