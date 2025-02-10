.text
	MOV R1,#0x99    	         ; inp (larger one)
	MOV R2,#0x45	
	MOV R5,#0               	 ; result
	
	MOV R3,#0xF   
	MOV R8,#6
	MOV R9,R13
	
	PUSH:               		 ; add corresponding BYTE and push each
		AND R4,R1,R3
		AND R5,R2,R3
		ADC R4,R4,R5
		CMP R4,#9
		BGT CNG
	CONT:
		STMEA R13!,{R4}
		MOV R1,R1,LSR #4
		MOV R2,R2,LSR #4
		CMP R1,#0
		BNE PUSH
	
	CARY:			 	 ; if carry from MSB
		MOV R4,#0
		MOV R5,#0
		ADC R4,R4,#0
		STMEA R13!,{R4}
	

	POP: 				 ; APPEND Poped res
		LDMEA R13!,{R4}
		MOV R5,R5,LSL #4
		ADD R5,R5,R4
		CMP R9,R13
		BNE POP
	SWI 0x011
	
	CNG:
		ADD R4,R4,#6            
		AND R4,R4,#0xF
		B CONT	

		
