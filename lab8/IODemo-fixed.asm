; IODemo.asm
; Produces a "bouncing" animation on the LEDs.
; The LED pattern is initialized with the switch state.

ORG 0

	; Get and store the switch values
GetSwitches:
	IN     Switches
    STORE Pattern
    STORE PrevSwitches
    
    LOADI 0
    STORE BitCount
CountBits:
	LOAD	PrevSwitches
	AND		FirstBitMask
    
    ADD	BitCount
    STORE	BitCount
    
    LOAD PrevSwitches
    SHIFT -1
    STORE PrevSwitches
    
    LOAD PrevSwitches
    JZERO ZeroBit
    JUMP CountBits
ZeroBit:
	LOAD BitCount
    ADDI -3
    JNEG FinishedReading
    JUMP GetSwitches
    
FinishedReading:
	LOAD	Pattern
	OUT    LEDs
	STORE  Pattern
	
Left:
	; Slow down the loop so humans can watch it.
	CALL   Delay

	; Check if the left place is 1 and if so, switch direction
	LOAD   Pattern
	AND    Bit9         ; bit mask
	JPOS   Right        ; bit9 is 1; go right
	
	LOAD   Pattern
	SHIFT  1
	STORE  Pattern
	OUT    LEDs

	JUMP   Left
	
Right:
	; Slow down the loop so humans can watch it.
	CALL   Delay

	; Check if the right place is 1 and if so, switch direction
	LOAD   Pattern
	AND    Bit0         ; bit mask
	JPOS   Left         ; bit0 is 1; go left
	
	LOAD   Pattern
	SHIFT  -1
	STORE  Pattern
	OUT    LEDs
	
	JUMP   Right
	
; To make things happen on a human timescale, the timer is
; used to delay for half a second.
Delay:
	OUT    Timer
WaitingLoop:
	IN     Timer
	ADDI   -5
	JNEG   WaitingLoop
	RETURN

; Variables
Pattern:   DW 0

; Useful values
Bit0:      DW &B0000000001
Bit9:      DW &B1000000000

; IO address constants
Switches:  EQU 000
LEDs:      EQU 001
Timer:     EQU 002
Hex0:      EQU 004
Hex1:      EQU 005
PrevSwitches:	DW	0
FirstBitMask:	DW	1
BitCount:		DW 	0

