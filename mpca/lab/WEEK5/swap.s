.text
    LDR R0, =A        
    SWI 0x02          

    MOV R1, R0        

FIND_END:
    LDRB R2, [R0], #1 
    CMP R2, #0        
    BNE FIND_END      

    SUB R0, R0, #2    
    LDRB R3, [R0]     
    LDRB R4, [R1]     
    STRB R3, [R1]     
    STRB R4, [R0]     

    LDR R0,=A
    SWI 0x02          
    SWI 0x011         

.data
A: .ASCIZ "Hello"
