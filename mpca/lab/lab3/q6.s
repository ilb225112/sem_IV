.text
	MOV R1,#32	  ;32*50   50 = 2^5 + 2^4 + 2
	MOV R2,R1,LSL #5
	ADD R2,R2,R1, LSL #4
	ADD R2,R2,R1,LSL #1

SWI 0X011
	