.text
    LDR R0, =A
    LDR R1, =B
    LDR R2, =C

    MOV R3, #0
	MOV R12,#12

	LOOP1:
    		CMP R3, #3
    		BGE END
    		MOV R4, #0

		LOOP2:
				CMP R4, #3
				BGE INCREMENT_I
				MOV R11, #0
				MOV R5, #0

			LOOP3:
					CMP R5, #3
					BGE INCREMENT_J

					MUL R6, R3, R12
					ADD R6, R6, R5, LSL #2
					LDR R7, [R0, R6]

					MUL R8, R5, R12
					ADD R8, R8, R4, LSL #2
					LDR R9, [R1, R8]

					MLA R11, R7, R9, R11

					ADD R5, R5, #1
    			B LOOP3

	INCREMENT_J:
		MUL R10, R3, R12
		ADD R10, R10, R4, LSL #2
		STR R11, [R2, R10]

		ADD R4, R4, #1
		B LOOP2

	INCREMENT_I:
		ADD R3, R3, #1
		B LOOP1

END:
    SWI 0X011

.data
A:  .word 1,2,3
    .word 4,5,6
    .word 1,1,1

B:  .word 0,1,1
    .word 1,5,3
    .word 2,0,1

C:  .word 0,0,0
    .word 0,0,0
    .word 0,0,0