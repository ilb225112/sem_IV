.text
	LDR R0,=A
	LDR R1,=B
	
	MOV R2,#11                ; text length(n)
	MOV R3,#3		  ; pattern length(m)
	SUB R4,R2,R3              ; R4 = n-m

	MOV R5,#0                 ; j 
	MOV R8,#0                 ; i
	
	LOOP:
		CMP R4,#0
		
		BEQ FAIL

		MOV R5,#0         
		CMP R5,R3
		BLT WLOOP
	CONTINUE:
		CMP R5,R3
		BEQ EXIT
		
		CMP R8,R4
		ADDLT R8,R8,#1
		BLT LOOP 
		B FAIL
		
		
	EXIT:
		LDR R0,=C
		SWI 0X02	
		SWI 0X011
	FAIL:
		MOV R8,#-1
		LDR R0,=D
		SWI 0X02
		B EXIT
	WLOOP:
		LDRB R10,[R1,R5]
		ADD R9,R5,R8
		LDRB R11,[R0,R9]
		CMP R11,R10
		ADDEQ R5,R5,#1
		BEQ WLOOP
		B CONTINUE
	
	

.data
	A: .ASCIZ "ABCDEFGHIJJ"
	B: .ASCIZ "DEF"
	C: .ASCIZ "Substring Present"
	D: .ASCIZ "Not Present"