    MOV R0, #7
    MOV R1, #1

fact:
    CMP R0, #0     ; CPSR : R0 - 0
    BEQ end        ; If for prev instr Z = 0 go to end 
    MUL R1, R0, R1 ; R1 = R0*R1 ->avoid using MUL R1,R1,R0 
    SUB R0, R0, #1 ; R0--
    B fact         ; Jump back to fact label

end:
    SWI 0x011
