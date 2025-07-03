data segment
    numbers db 1h,2h,3h,5h,6h;
    count equ 5
    largest_number db ?
data ends
 
code segment
assume cs:code, ds:data
main:
    mov ax, data
    mov ds, ax

    mov si, offset numbers     ; Point SI to the start of the array
    mov al, [si]               ; Load the first number into AL
    mov largest_number, al     ; Initialize largest_number with the first number

    mov cx, count              ; Load the count of numbers into CX
    inc si                     ; Move SI to point to the next number in the array

find_largest:
    cmp al, [si]               ; Compare AL (largest number so far) with the current number
    jae not_larger             ; Jump if the current number is not larger
    mov al, [si]               ; If larger, update AL with the new largest number
    mov largest_number, al

not_larger:
    inc si                     ; Move to the next number in the array
    loop find_largest          ; Loop until all numbers are checked

    mov dl, largest_number
    add dl, 30h                ; Convert largest_number to ASCII
    mov ah, 02h                ; AH=02h - Function to print character
    int 21h                   ; DOS interrupt to print character

code ends
end main