.text

	MOV R1,#5     	      		; R1 = 5
	MOV R2,#10              	; R2 = 10

	arithmetic:
		ADD R3,R2,R1  		; R3 = R2 + R1
		SUB R4,R2,R1 		; R4 = R2 - R1
		RSB R5,R2,R1  		; R5 = R1 - R2
					
	comparision:  
		CMP R1,R2     		; R1 - R2 -> NZCV 
		CMN R1,R2     		; R1 + R2 -> NZCV
		TST R1,R2     		; R1 & R2 -> NZ
		TEQ R1,R2     		; R1 ^ R2 -> NZ
			      		; Op      -> CPSR Affected

	bitwise: 
		AND R6,R1,R2  		; R6 = R1 & R2
		ORR R7,R1,R2  		; R7 = R1 | R2
		EOR R8,R1,R2  		; R8 = R1 ^ R2
		BIC R9,R1,R2  		; R9 = R1 & (~R2)

	ones_complement:
		MVN R9,R9     		; R5 = ~R5
		MVN R1,#0     		; R1 is filled with all 1's
		BIC R9,R1,R9  		; 1's complement of R9 is stored back in R9

	arithmetic_flags:
		ADDS R3, R2, R1      	; Affects cpsr along with addition
		SUBS R4, R2, R1      	; --|.................|-- subtraction
		ADDEQ R5, R2, R1     	; add, if Z.
		SUBEQ R6, R2, R1     	; sub, if Z.

SWI 0X011                     		; SoftWare Interrupt -> ends program