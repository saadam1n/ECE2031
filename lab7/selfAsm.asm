; scompExample.asm (SCOMP Assembly)
; This program stores 20-SUBVAL in 0x0020 and enters an infinite loop.
; Saad Amin
; ECE 2031 L10
; 03/05/2025

ORG 0
	; compute 20 - 26
	LOADI 20
	SUB 	SUBVAL

	; store it in 0x0020
	STORE 	&H20
	
Finish:
	JUMP   Finish

ORG &H1F
SUBVAL:		DW	26
  