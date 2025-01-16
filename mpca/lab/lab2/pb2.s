.text 
    MOV R1,#0       ; R1 = 0
    MOV R2,#0b1100  ; R2 = 12
    RSB R1,R2,R1    ; R1 = R1-R2 =-12
SWI 0X011