.text
    MVN R0,#0     ; move 1's comp to R0 
    MOV R1,#0
    MOV R2,R1
    MOV R3,R0

    ADDS R2,R0,R2
    ADCS R3,R1,R3 ; Add with carry from C bit
SWI 0X011

@ R1 R0 -> 0x00000000   0xFFFFFFFF
@ R3 R2 -> 0xFFFFFFFF   0x00000000  
@ add   -> 0xFFFFFFFF   0xFFFFFFFF   = ans

