.text
	LDR R0,=matrix
	LDR R1,=transpose
	
	MOV R3,#0  ; indicates i (col)
	MOV R4,#0  ; indicates j (row)
	MOV R9,#3  ; Order -> col
	
	MOV R7,#0
	
	LOOP1:    		 		; j loop
		MOV R4,#0
		
		LOOP2:	         		; i loop
			MLA R7,R4,R9,R3
			LDR R2,[R0],#4
			STR R2,[R1,R7,LSL #2]

			ADD R4,R4,#1
			CMP R4,#3
			BNE LOOP2			
	
	ADD R3,R3,#1
	CMP R3,#3	
	BNE LOOP1

	SWI 0X011



.data
	matrix:       .word   1, 2, 3       ;Original 3x3 matrix
                      .word   4, 5, 6
                      .word   7, 8, 9

	transpose:    .word   0, 0, 0       ;Space for transposed matrix
                      .word   0, 0, 0
                      .word   0, 0, 0
