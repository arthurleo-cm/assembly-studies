;BASE
.model small
.stack 100h

;AREA PARA DECLARACAO DE VARIAVEIS
.data


;PROGRAMA PRINCIPAL
.code
main:
    mov ax, @data
    mov ds, ax
    
    ;MEU PROGRAMA
    mov ax,10    ;AX = 10
    mov bx,4    ;BX = 4
    sub ax,bx    ; ax = ax - bx
    
sairPrograma:
 ; Finaliza o programa
 mov ah, 4Ch  ; Funcao de saida
 int 21h      ; Chama a interrupcao para sair  

end main   