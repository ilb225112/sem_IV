.text
	LDR R0,=res
	MOV R1,#8

	MOV R2,#0
	MOV R3,#1
	MOV R4,#0
	
	STORING:
		STR R2,[R0]
		ADD R0,R0,#4
		STR R3,[R0]
		ADD R0,R0,#4

	LOOP:
		ADD R4,R3,R2
		STR R4,[R0]
		ADD R0,R0,#4
		
		MOV R2,R3
		MOV R3,R4

		SUBS R1,R1,#1
		BNE LOOP
SWI 0X011	


.data
	res: .word 0,0,0,0,0,0,0,0,0,0