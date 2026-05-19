;BASE
.model small
.stack 100h

;AREA PARA DECLARACAO DE VARIAVEIS
.data


;PROGRAMA PRINCIPAL
.code
main:
;DEFINIR FUNÇÃO 

media proc
    ;CÓDIGO  
    ;SALVAR O ENDETEÇO DE RETORNO
    ;REMOVER O VALOR DA PILA    
    pop cx
    
    
    pop ax
    pop bx
    add ax,bx
    mov dx,0
    mov bx,2
    div bx

    push dx
    push ax
    push cx
    ret
media endp

    mov ax, @data
    mov ds, ax
    
  ;DESENVOLVER UMA FUNÇÃO PARA O CALCULO DA MEDIA DE DOIS VALORES
  mov ax,6
  push ax
  mov ax,4
  push ax
  call media
  
  mov ax,2
  
  
  
    
   
sairPrograma:
 ; Finaliza o programa
 mov ah, 4Ch  ; Funcao de saida
 int 21h      ; Chama a interrupcao para sair  

end main   
