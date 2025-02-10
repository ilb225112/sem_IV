.text
	MOV R3,#0  ; indicates i (col)
	MOV R4,#0  ; indicates j (row)
	MOV R9,#3  ; Order -> col
	
	MOV R1,#1
	MOV R7,#0
	LDR R2,=A
	
	LOOP1:    		 		; j loop
		MOV R4,#0
		
		LOOP2:	         		; i loop
			MLA R7,R4,R9,R3
			STR R1,[R2,R7,LSL #2]
			ADD R1,R1,#1

			ADD R4,R4,#1
			CMP R4,#3
			BNE LOOP2			
	
	ADD R3,R3,#1
	CMP R3,#3	
	BNE LOOP1

	SWI 0X011


.data
	A: .word 0,0,0,0,0,0,0,0,0




