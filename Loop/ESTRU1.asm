;BASE
.model small
.stack 100h

;AREA PARA DECLARACAO DE VARIAVEIS
.data
paginaVideo db 0
cursorLin db 10
cursorCol db 10
caracterRepeticao dw 0
tecla db 0
cont db 0 ;variavel de 8 bits: 0 a 255 - TOTALIZANDO 256 VALORES
max db 70  ;variavel de 8 bits valor maximo

;PROGRAMA PRINCIPAL
.code
main:
    mov ax, @data
    mov ds, ax
    ;SEMPRE QUE ESTOUTRA o LIMITE DE UMA VARIAVEL ELA VOLTA PARA O ORIGINAL 
    ;MEU PROGRAMA
    

    mov cont,65
loop:
    ;ECREVER OS CARACTERES;
    ;CUJO CODIGO EH REPRESENTADO
    ;PELO VALOR DE [CONT]
    
    ;SETANDO A POSI??O  
     mov bh,paginaVideo
     mov dh,cursorLin
     mov dl,cursorCol
     mov ah,02h   ;CODIGO FUNCAO
     int 10h
     
     inc cursorCol
     ;ESCREVENDO 1 CARACTER
     
     mov al,cont
     mov bh,paginaVideo
     mov cx,1
     mov ah,0ah
     int 10h
    

  inc cont
  ;Estrutura de controle
  mov al,cont
  mov bl,max
  cmp al,bl
  jbe loop  
    
sairPrograma:
 ; Finaliza o programa
 mov ah, 4Ch  ; Funcao de saida
 int 21h      ; Chama a interrupcao para sair  

end main   