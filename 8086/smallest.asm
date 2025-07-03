data segment
    numbers db 1h,2h,3h,5h,7h
    count equ 5
    smallest_number db ?
data ends
 
code segment
assume cs:code, ds:data
main:
    mov ax, data
    mov ds, ax

    mov si, offset numbers     ; Point SI to the start of the array
    mov al, [si]               ; Load the first number into AL
    mov smallest_number, al    ; Initialize smallest_number with the first number

    mov cx, count              ; Load the count of numbers into CX
    inc si                     ; Move SI to point to the next number in the array

find_smallest:
    cmp al, [si]               ; Compare AL (smallest number so far) with the current number
    jbe not_smaller            ; Jump if the current number is not smaller
    mov al, [si]               ; If smaller, update AL with the new smallest number
    mov smallest_number, al

not_smaller:
    inc si                     ; Move to the next number in the array
    loop find_smallest         ; Loop until all numbers are checked

    mov dl, smallest_number
    add dl, 30h                ; Convert smallest_number to ASCII
    mov ah, 02h                ; AH=02h - Function to print character
    int 21h                    ; DOS interrupt to print character

    mov ah, 4Ch                ; AH=4Ch - Exit program
    int 21h                    ; DOS interrupt to exit

code ends
end main
