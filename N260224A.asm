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
    mov ax,4    ;AX = 6
    mov bx,5    ;BX = 4
    add ax,bx    ; ax = ax + bx
    
sairPrograma:
 ; Finaliza o programa
 mov ah, 4Ch  ; Funcao de saida
 int 21h      ; Chama a interrupcao para sair  

end main   