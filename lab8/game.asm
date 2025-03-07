; insert header here

LOADI 0
STORE Score

GameStart:
  LOAD Score
  OUT Hex1

WaitAllDown:
    CALL ReadSwitches
    JZERO EndWaitAllDown
    JUMP WaitAllDown
    
EndWaitAllDown:



  CALL GenRandomNumber
  OUT Hex0

  CALL FindLowestSetBit
  STORE RandomNumber

  ; game on!
  OUT TIMER
  CALL GetPlayerAnswer

  CALL FindLowestSetBit
  SUB RandomNumber
  JZERO CorrectAnswer




WrongAnswer:
	LOADI 0
    STORE SCORE
    JUMP GameEnd

CorrectAnswer:
	IN TIMER
    STORE AnswerTime
    LOADI 200
    SUB AnswerTime
    STORE Score

GameEnd:
	JUMP GameStart

ReadSwitches:
    IN Switches
    OUT LEDs
    RETURN

GenRandomNumber:
    LOADI -1 ; start from zero
    STORE RNGNumber
RNGStart:
    LOAD RNGNumber
    ADDI 1
    STORE RNGNumber

    CALL ReadSwitches
    STORE RNGRead
    AND SW9Mask
    
    JZERO RNGStart
    
    LOAD RNGRead
    AND RNGMask
    JPOS RNGStart
    
    LOAD RNGNumber
    AND RNGMask
    
    JZERO Set511
    
    RETURN
Set511:
    LOADI 511
    RETURN
    
RNGNumber:    DW     0
RNGRead:    DW     0
RNGMask:    DW    511    

GetPlayerAnswer:
	CALL ReadSwitches
  	AND RNGMask
    JZERO GetPlayerAnswer
    RETURN
    


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




SW9Mask:    DW    512

PlayerAnswer:	DW 0
RandomNumber:	DW	0
Score:	DW	0   
AnswerTime:	DW	0
    
; I/O addresses
Switches:  EQU 000
LEDs:      EQU 001
Timer:     EQU 002
Hex0:      EQU 004
Hex1:      EQU 005