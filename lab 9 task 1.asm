
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt


org 100h

mov cx, 5        ; counter = 5

start:
mov dl, 'A'      ; character to print
mov ah, 02h      ; function to display character
int 21h          ; DOS interrupt

loop1:
dec cx           ; decrease counter
jz end_prog      ; if zero, jump to end
jmp start        ; otherwise repeat

end_prog:
mov ah, 4ch      ; terminate program
int 21h

ret




