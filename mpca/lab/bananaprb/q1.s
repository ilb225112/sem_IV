.text
    LDR R0,=A        
    MOV R5,#6        ; N

    MOV R1,#0        ; i 

LOOP:
    CMP R1, R5       
    BGE DONE         

    MOV R3, R1       ; minIndex 
    ADD R2, R1, #1   ; j 

    LOOP1:
        CMP R2, R5       
        BGE SWAP

        LDR R6, [R0, R2, LSL #2]  
        LDR R7, [R0, R3, LSL #2]  

        CMP R6, R7
        MOVLT R3, R2     ; if A[j] < A[minIndex], minIndex = j

        ADD R2, R2, #1
        B LOOP1          

    SWAP:
        LDR R4, [R0, R3, LSL #2]  
        LDR R8, [R0, R1, LSL #2]  

        STR R8, [R0, R3, LSL #2]  
        STR R4, [R0, R1, LSL #2]  

        ADD R1, R1, #1  
        B LOOP          

	DONE:
		SWI 0X011             

.data
A:  .word 9,4,7,8,10,6 