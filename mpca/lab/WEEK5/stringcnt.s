.text
	LDR R0,=A
	MOV R5,#0
	
	LOOP:
		LDRB R1,[R0],#1
		CMP R1,#0
		ADDNE R5,R5,#1
		BNE LOOP
	SWI 0X011
.data
	A: .ASCIZ "ABCDEFGHIJJ"