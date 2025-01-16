.text
    MVN R0,#0     ; move 1's comp to R0 
    MOV R1,#0
    MOV R2,R1
    MOV R3,R0

    ADDS R2,R0,R2
    ADCS R3,R1,R3 ; Add with carry from C bit
SWI 0X011

@ R1 R0 -> 0000 0000   1111 1111
@ R3 R2 -> 1111 1111   0000 0000
@ add   -> 1111 1111   1111 1111   = ans

