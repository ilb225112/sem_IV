.text
	LDR R0,=A               
	ADD R0, R0, #4          

	PEV:
		LDRB R1, [R0], #-1  
		CMP R1, #0          
		BEQ Exit

		SUB R1, R1, #'0'    
		CMP R1, #0
		BLT Cont            

		STMDB R13!, {R1}    
		B PEV               

	Cont:
		LDMIA R13!, {R2}    
		LDMIA R13!, {R3}    

		CMP R1, #('-' - '0') 
		BEQ do_sub
		CMP R1, #('+' - '0') 
		BEQ do_add

	do_add:
		ADD R2, R2, R3     
		B push_result

	do_sub:
		SUB R2, R2, R3     

	push_result:
		STMDB R13!, {R2}    
		B PEV               

	Exit:
		LDMIA R13!, {R0}    
		SWI 0x011           

.data
	A: .asciz "+-323"       
