;IMPLEMENTE, EM ASSEMBLER, UMA APLICAÇÃO DE SOFTWARE PARA CALCULAR A MÉDIA ARITMÉTICA DE 5 NÚMEROS:

;BASE
.model small
.stack 100h

.data
NOTA1 dw 8
NOTA2 dw 6
SOMA dw 0
MEDIA dw 0

.code
main:
    mov ax, @data
    mov ds, ax
    
    mov ax,NOTA1
    mov bx,NOTA2
    add ax,bx
    mov SOMA,ax
    mov dx,0
    mov bx,2
    div bx ;ax = ax / bx
    mov MEDIA,ax

sairPrograma:
 ; Finaliza o programa
 mov ah, 4Ch  ; Funcao de saida
 int 21h      ; Chama a interrupcao para sair  


end main   



