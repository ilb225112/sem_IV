.text 
    MOV R1,#0b0101 
    MOVS R2,R1,LSR #1 ; Logical Shift Right R1 by 1 bit and reflect it in C bit
    @if C bit=0 => even else odd 
SWI 0X011 