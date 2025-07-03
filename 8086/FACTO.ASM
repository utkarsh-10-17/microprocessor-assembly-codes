ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NUM DB 4  ; Number
DATA ENDS

CODE SEGMENT
    ORG 100H

START:
    MOV AX, DATA
    MOV DS, AX
    
    MOV AX, 0H
    MOV AX, NUM   
    MOV BX, AX  
    MOV AX, 1H

FACT :
    MUL BX 
    DEC BX
    JNZ FACT ; Repeat the loop

    MOV DX, AX  ; Move the factorial 

    INT 3         ; Debug interrupt
    INT 21H       ; DOS interrupt for program termination

CODE ENDS
END START
