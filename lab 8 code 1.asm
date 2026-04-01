
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h

mov cx, 10        ; loop 10 times (9 to 0)

mov dl, '9'       ; start from character '9'

print_loop:

mov ah, 02h       ; function to print character
int 21h

dec dl            ; decrease value (9 ? 8 ? 7 ...)

loop print_loop   ; repeat loop

mov ah, 4ch       ; terminate program
int 21h

ret




