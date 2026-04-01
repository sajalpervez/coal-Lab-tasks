
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h

.data
    msg1 db 'Enter first number: $'
    msg2 db 0dh, 0ah, 'Enter second number: $'
    msg_g db 0dh, 0ah, 'Greater$'
    msg_s db 0dh, 0ah, 'Smaller$'

.code
main proc
    ; First number input
    mov dx, offset msg1
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al          ; Pehla number BL mein save karo

    ; Second number input
    mov dx, offset msg2
    mov ah, 9
    int 21h
    
    mov ah, 1
    int 21h             ; Doosra number AL mein hai

    ; Comparison (BL vs AL)
    cmp bl, al
    jg is_greater       ; Agar BL > AL, toh Greater
    
    ; Agar Smaller ya Equal hai
    mov dx, offset msg_s
    mov ah, 9
    int 21h
    jmp exit_prog

is_greater:
    mov dx, offset msg_g
    mov ah, 9
    int 21h

exit_prog:
    mov ah, 4ch
    int 21h
main endp

end main

ret




