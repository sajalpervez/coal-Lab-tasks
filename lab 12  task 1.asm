
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.data

.code
main:
mov ax, @data
mov ds, ax

mov cx, 4        ; total rows
mov bl, 1        ; row number

outer_loop:

    mov dl, 1    ; start number from 1

inner_loop:
    mov al, dl
    add al, 30h      ; convert to ASCII
    mov dl, al
    mov ah, 2
    int 21h

    sub dl, 30h      ; back to number
    inc dl           ; next number

    cmp dl, bl
    jle inner_loop

    ; new line
    mov dl, 13
    mov ah, 2
    int 21h
    mov dl, 10
    int 21h

    inc bl
loop outer_loop

mov ah, 4ch
int 21h
end main

ret




