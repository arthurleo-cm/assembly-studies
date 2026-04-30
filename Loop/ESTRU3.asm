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


;PROGRAMA PRINCIPAL
.code
main:
    mov ax, @data
    mov ds, ax
    ;SEMPRE QUE ESTOUTRA o LIMITE DE UMA VARIAVEL ELA VOLTA PARA O ORIGINAL 
    ;MEU PROGRAMA
    

    
    
    mov cursorLin,10
LoopLin:
    mov cursorCol,10
loopCol:
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
     
     mov al,"X"
     mov bh,paginaVideo
     mov cx,1
     mov ah,0ah
     int 10h
    
     inc cursorCol
     mov al,cursorCol
     mov bl,15
     cmp al,bl
     jbe loopCol
 
     inc cursorLin
     mov al,cursorLin
     mov bl,15
     cmp al,bl
     jbe LoopLin
 
     
     
     
    
sairPrograma:
 ; Finaliza o programa
 mov ah, 4Ch  ; Funcao de saida
 int 21h      ; Chama a interrupcao para sair  

end main   