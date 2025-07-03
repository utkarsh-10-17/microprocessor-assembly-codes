ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO1 DB 02H   ; Define the number whose square is to be computed
DATA ENDS

CODE SEGMENT
START:
    ORG 500H      ; Set the origin address
    MOV AX, DATA  ; Load the data segment address into AX
    MOV DS, AX    ; Set the data segment register to point to the data segment

    MOV AL, NO1   ; Load the 8-bit number into AL

    MUL AL        ; Multiply AL by itself to compute the square
    INT 3         ; Software breakpoint for debugging purposes
    INT 21H       ; End of program

CODE ENDS
END START
