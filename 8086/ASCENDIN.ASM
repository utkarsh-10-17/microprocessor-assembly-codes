DATA SEGMENT
    STRING1 DB 85H, 31H, 58H, 27H, 06H
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
START:
    MOV AX, DATA
    MOV DS, AX

UP2:
    MOV CL, 04H         ; Set loop count
    LEA SI, STRING1    ; Load address of STRING1 to SI

UP1:
    MOV AL, [SI]       ; Load current byte into AL
    MOV BL, [SI+1]     ; Load next byte into BL

    CMP AL, BL         ; Compare AL with BL
    JC DOWN            ; Jump if AL < BL

    ; Swap if not in order
    MOV DL, [SI+1]     ; Load the next byte into DL
    XCHG [SI], DL      ; Exchange bytes
    MOV [SI+1], DL     ; Store the swapped byte back

DOWN:
    INC SI             ; Move to the next pair of bytes
    DEC CL             ; Decrement loop counter
    JNZ UP1            ; Loop if not zero
    DEC CH             ; Decrement outer loop counter
    JNZ UP2            ; Loop if not zero
    INT 3              ; Debug interrupt

CODE ENDS
END START
