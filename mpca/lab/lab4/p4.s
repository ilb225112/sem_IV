.text
	MOV R0,#3 	; say the order is (3x3)->col no.

	MOV R1,#2 
	MOV R2,#2 	; co-ordinates given (2,2)

	LDR R3,=A
	MOV R7,#4

	MLA R4,R1,R0,R2 ; ->Index
	MLA R5,R7,R4,R3 ; ->Address

SWI 0X011	
	
.data
	A: .word 1,2,3,4,5,6,7,8,9