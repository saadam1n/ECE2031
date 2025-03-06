; header here

LOAD StartVal
CALL FindLowestSetBit
STORE Result1
CALL FindLowestSetBit
STORE Result2
CALL FindLowestSetBit
STORE Result3
CALL FindLowestSetBit
STORE Result4

InfLoop:
	JUMP InfLoop

; we can find the lowest set bit via a loop
FindLowestSetBit:
	STORE LoopAC
    LOADI 16
    STORE LoopIters
    LOADI 0
    STORE LoopIdx
LoopHeader:
	LOAD LoopIdx
    SUB LoopIters
    JNEG LoopStart
    LOADI -1
    RETURN
    
LoopStart:
	LOAD LoopAC
    SHIFT -1
    SHIFT 1
    SUB LoopAC
    JNEG Answer
    LOAD LoopAC
    SHIFT -1
    STORE LoopAC
    LOAD LoopIdx
    ADDI 1
    STORE LoopIdx
    JUMP LoopHeader
    
Answer:
	LOAD LoopIdx
    RETURN
    
LoopAC:		DW  0  
LoopIdx:	DW	0
LoopIters:	DW	16	

    
    
StartVal:	DW 10496
Result1:	DW 0
Result2:	DW 0
Result3:	DW 0
Result4:	DW 0
    
    
    
    
