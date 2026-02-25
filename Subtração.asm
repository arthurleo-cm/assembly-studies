;BASE
.model small
.stack 100h

;area para declarar
.data

.code
main:
    mov ax, @data
    mov ds, ax
    
    ;MEU PROGRAMA
    mov ax,10    ;AX = 10
    mov bx,4    ;BX = 4
    sub ax,bx    ; ax = ax - bx
    
sairPrograma:
 mov ah, 4Ch 
 int 21h     


end main   
