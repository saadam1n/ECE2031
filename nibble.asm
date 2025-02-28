ORG 0
	LOAD VALUE
    AND MASK
    STORE LOWER

	LOAD VALUE
    SHIFT -12
    AND MASK ; force logical shift
    STORE UPPER
    
    SUB LOWER
    
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
