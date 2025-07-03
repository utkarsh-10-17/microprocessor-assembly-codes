ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO DB 12, 13, 20, 27, 28 ; Numbers
    CNT DB 5                 ; Count of numbers
DATA ENDS

CODE SEGMENT
    ORG 100H
START:
    MOV AX, DATA
    MOV DS, AX

    MOV SI, OFFSET NO

    MOV CX, CNT
    MOV BL, 0  ; Initialize BL to store the sum

SUM_LOOP:
    ADD BL, [SI]  ; Add the current number to BL
    INC SI        ; Move to the next number
    LOOP SUM_LOOP ; Continue until all numbers are added

    MOV AL, BL    ; Move the sum to AL
    MOV BL, CNT   ; Move the count to BL
    MOV AH, 0     ; Clear AH for division

    CBW           ; Convert BL to word, zero-extending into AX
    DIV BL        ; Divide AX by BL (CNT)

    MOV DL, AL    ; Move the quotient to DL (average)

    INT 3         ; Debug interrupt
    INT 21H       ; DOS interrupt for program termination

CODE ENDS
END START
