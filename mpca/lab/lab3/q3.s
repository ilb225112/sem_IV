.text
	LDR R0,=Array
	LDR R1,=negsum
	MOV R2,#10
	MOV R3,#0
	
	LOOP:
		LDR R4,[R0]
		CMP R4,#0
		BLT Sum
	CONT:
		SUBS R2,R2,#1
		ADD R0,R0,#4
		BNE  LOOP
	STR R3,[R1]
	SWI 0X011

	Sum:
		ADD R3,R3,R4
		B CONT
		

.data
	Array: .word 1,2,3,4,-1,5,-2,-3,6,0
	negsum: .word 0