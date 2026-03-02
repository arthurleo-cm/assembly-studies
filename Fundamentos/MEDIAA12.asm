;IMPLEMENTE, EM ASSEMBLER, UMA APLICAÇÃODE SOFTWARE PARA CALCULAR A MÉDIA ARITMÉTICA DE 5 NÚMEROS:




;BASE
.model small
.stack 100h

.data


.code
main:
    mov ax, @data
    mov ds, ax
    
    mov ax,9
    mov bx,10
    add ax,bx
    
    mov bx,8
    add ax,bx
    
    mov cx,4
    add ax,cx
    
    mov cx,10
    add ax,cx
    
    mov dx,0
    mov bx,5
    div bx
    
      
    
sairPrograma:
 ; Finaliza o programa
 mov ah, 4Ch  ; Funcao de saida
 int 21h      ; Chama a interrupcao para sair  


end main   

