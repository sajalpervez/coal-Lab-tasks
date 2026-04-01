
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

org 100h

.data
    newline db 0dh, 0ah, '$'

.code
main proc
    mov cx, 26          
    mov dl, 'A'         

print_loop:
    push dx             
    
    mov ah, 2           
    int 21h
    
    mov dx, offset newline
    mov ah, 9           
    int 21h
    
    pop dx
    inc dl              
    
    loop print_loop     

    mov ah, 4ch
    int 21h
main endp

end main

ret




