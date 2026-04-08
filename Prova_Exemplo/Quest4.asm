;BASE
.model small
.stack 100h

;AREA PARA DECLARACAO DE VARIAVEIS
.data
paginaVideo db 0
cursorLin db 0
cursorCol db 10
cont db 0

;PROGRAMA PRINCIPAL
.code
main:
    mov ax, @data
    mov ds, ax
    
    ;MEU PROGRAMA
loopX1:
    ;DEFINIR POSICAO CURSOR
    ;BH = NUMERO DA PAGINA
    ;DH = LINHA
    ;DL = COLUNA
    ;SETAR POSICAO DO CURSOR
    mov ah,02h   ;CODIGO FUNCAO
    mov bh,paginaVideo
    mov dh,cursorLin
    mov dl,cursorCol
    int 10h

    ;ESCREVER CARACTER e ATRIBUTO 
    ; NA POSICAO DO CURSOR
    ;AL = CARACTER
    ;BH = NUMERO DA PAGINA
    ;BL = COR
    ;CX = NUMERO DE REPETICAO
    ;RETORNO
    ; NAO SE APLICA
    mov al,"."
    mov bh,paginaVideo
    mov bl,1eh      ;0001 1110 = 1e
    mov cx,1
    mov ah,09h ;CODIGO FUNCAO
    int 10h

    inc cursorCol
    inc cursorLin
    
    inc cont
    cmp cont,15
    jne loopX1

    mov cursorLin,0
    mov cursorCol,25
    mov cont,0
loopX2:
    ;DEFINIR POSICAO CURSOR
    ;BH = NUMERO DA PAGINA
    ;DH = LINHA
    ;DL = COLUNA
    ;SETAR POSICAO DO CURSOR
    mov ah,02h   ;CODIGO FUNCAO
    mov bh,paginaVideo
    mov dh,cursorLin
    mov dl,cursorCol
    int 10h

    ;ESCREVER CARACTER e ATRIBUTO 
    ; NA POSICAO DO CURSOR
    ;AL = CARACTER
    ;BH = NUMERO DA PAGINA
    ;BL = COR
    ;CX = NUMERO DE REPETICAO
    ;RETORNO
    ; NAO SE APLICA
    mov al,"/"
    mov bh,paginaVideo
    mov bl,9eh      ;0001 1110 = 1e
    mov cx,1
    mov ah,09h ;CODIGO FUNCAO
    int 10h

    dec cursorCol
    inc cursorLin
    
    inc cont
    cmp cont,15
    jne loopX2


    mov cursorLin,0
    mov cursorCol,27
    mov cont,0
loopX3:
    ;DEFINIR POSICAO CURSOR
    ;BH = NUMERO DA PAGINA
    ;DH = LINHA
    ;DL = COLUNA
    ;SETAR POSICAO DO CURSOR
    mov ah,02h   ;CODIGO FUNCAO
    mov bh,paginaVideo
    mov dh,cursorLin
    mov dl,cursorCol
    int 10h

    ;ESCREVER CARACTER e ATRIBUTO 
    ; NA POSICAO DO CURSOR
    ;AL = CARACTER
    ;BH = NUMERO DA PAGINA
    ;BL = COR
    ;CX = NUMERO DE REPETICAO
    ;RETORNO
    ; NAO SE APLICA
    mov al,"."
    mov bh,paginaVideo
    mov bl,12h      ;0001 1110 = 1e
    mov cx,1
    mov ah,09h ;CODIGO FUNCAO
    int 10h

    dec cursorCol
    inc cursorLin
    
    inc cont
    cmp cont,15
    jne loopX3
    
sairPrograma:
 ; Finaliza o programa
 mov ah, 4Ch  ; Funcao de saida
 int 21h      ; Chama a interrupcao para sair  

end main   
