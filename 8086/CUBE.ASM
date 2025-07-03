ASSUME CS:CODE, DS:DATA

DATA SEGMENT
    NO DB 04H   ; Define the 8-bit number whose cube is to be computed
DATA ENDS

CODE SEGMENT
START:
    ORG 500H      ; Set the origin address
    MOV AX, DATA  ; Load the data segment address into AX
    MOV DS, AX    ; Set the data segment register to point to the data segment

    MOV AL, NO    ; Load the 8-bit number into AL

    MUL AL        ; Multiply AL by itself to get the square
    MOV BL, AL    ; Store the square in BL

    MUL BL        ; Multiply BL by the original number to get the cube
    INT 3         ; Software breakpoint for debugging purposes
    INT 21H       ; End of program

CODE ENDS
END START
