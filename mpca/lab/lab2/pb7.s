.text
    MOV R0,#101
    MOV R1,#21

    gcd:
        CMP R1,R0
        BEQ end       ; if R1=R0,Answer = r0. End program.
        BGT exch      ; if R1>R0 go to exch

    sub:
        SUB R0,R0,R1  ; Euclid's Algorithm
        B gcd 

    end:
        MOV R2,#0     ; Put R2=0 to avoid confusion and end
        SWI 0x011

    exch:             ; Swap values of R1 and R2
        MOV R2,R1
        MOV R1,R0
        MOV R0,R2
        B sub 