.text
    MOV R1,#0XFFFFFFFF ; R1 has all 1's
    MOV R2,#250        ; R2 = 0...0 1111 1010
    BIC R3,R1,R2       ; R3 = R1 & ~R2 

    EOR R4,R1,R2       ; R4 = R1 ^ R2
    ;Any technique can be used 
SWI 0X011