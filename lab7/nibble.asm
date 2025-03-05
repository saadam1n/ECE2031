; nibble.asm (SCOMP Assembly)
; This program reads the uppermost and lowermost 4 bits
; at VALUE and stores the larger nibble back in memory.
; Saad Amin
; ECE 2031 L10
; 03/05/2025

ORG 0
    ; get the lower 4 bits via masking
	LOAD VALUE
    AND MASK
    STORE LOWER

    ; get the upper 4 bits via shifting and masking
	LOAD VALUE
    SHIFT -12
    AND MASK ; emulate a logical shift via masking
    STORE UPPER
    
    SUB LOWER
    
    ; if UPPER - LOWER < 0 then UPPER < LOWER
    ; we ignore the edge case where UPPER == LOWER 
    JNEG LowerGreater
    
    LOAD UPPER
    STORE RESULT
    JUMP Loop
    
LowerGreater:
	LOAD LOWER
    STORE RESULT

Loop:
	JUMP Loop
    
    
VALUE: 		DW	&H1248
MASK:		DW	15
LOWER:      DW	-1
UPPER:		DW	-1
RESULT:		DW	-1
