ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO1 DB ?
DATA ENDS

CODE SEGMENT
START:
    ORG 500H           ; Set the origin address
    MOV AX, DATA       ; Load the data segment address into AX
    MOV DS, AX         ; Set the data segment register to point to the data segment

    MOV AH, 01h        ; Function to read character from standard input
    INT 21h            ; DOS interrupt

    SUB AL, 30h        ; Convert ASCII character to binary digit
    MOV NO1, AL        ; Store the input digit into NO1

    MOV AX, 0          ; Clear AX register
    MOV AL, NO1        ; Load the 8-bit number into AL

    MUL AL             ; Multiply AL by itself to compute the square

    INT 3              ; Software breakpoint for debugging purposes
    INT 21H            ; End of program

CODE ENDS
END START
