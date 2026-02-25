.model small
.stack 100h

.data

.code
main:
    mov ax, @data
    mov ds, ax
    
    ;MEU PROGRAMA
    mov ax,4    ;AX = 6
    mov bx,5    ;BX = 4
    add ax,bx    ; ax = ax + bx
    
sairPrograma:
 mov ah, 4Ch  
 int 21h      

end main   

