
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h

mov cx, 5        ; loop 5 times

mov dl, '*'      ; star character

print_loop:

mov ah, 02h      ; function to print character
int 21h

loop print_loop  ; repeat until CX = 0

mov ah, 4ch      ; end program
int 21h

ret




