.text
	LDR R0,=A
	LDR R1,=B
	MOV R2,#8
	
	LOOP:
		LDMIA R0,{R3,R4,R5,R6} ;4*4=16 bytes each time
		STMIA R1,{R3,R4,R5,R6}
		ADD R0,R0,#16
		ADD R1,R1,#16
		SUBS R2,R2,#1
		BNE LOOP
	SWI 0X011

.data
	A: .word 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32
	B: .word 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0