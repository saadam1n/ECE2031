; insert header here

WaitAllDown:
    CALL ReadSwitches
    JZERO EndWaitAllDown
    JUMP WaitAllDown
    
EndWaitAllDown:

CALL GenRandomNumber

InfLoop:
    JUMP InfLoop

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
SW9Mask:    DW    512
    
    
    
    
; I/O addresses
Switches:  EQU 000
LEDs:      EQU 001
Timer:     EQU 002
Hex0:      EQU 004
Hex1:      EQU 005

﻿