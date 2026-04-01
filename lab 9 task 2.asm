
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h

.data
    msg1 db 'Enter a number: $'
    msg_pos db 0dh, 0ah, 'Positive$'
    msg_neg db 0dh, 0ah, 'Negative$'

.code
main proc
    ; Print prompt message
    mov dx, offset msg1
    mov ah, 9
    int 21h

    ; Take single character input
    mov ah, 1
    int 21h
    
    ; Compare input with '-' sign (ASCII 2Dh)
    cmp al, '-'
    je is_negative

    ; If not '-', we assume it's positive (0-9)
    mov dx, offset msg_pos
    mov ah, 9
    int 21h
    jmp exit_prog

is_negative:
    mov dx, offset msg_neg
    mov ah, 9
    int 21h

exit_prog:
    mov ah, 4ch
    int 21h
main endp

end main

ret




