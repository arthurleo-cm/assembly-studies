;BASE
.model small
.stack 100h

;AREA PARA DECLARACAO DE VARIAVEIS
.data
cont db 0
caracterCor db 28h
paginaVideo db 0
cursorLin db 2
cursorCol db 2
caracterRepeticao dw 1
tecla db 0
max db 20



;PROGRAMA PRINCIPAL
.code
main:
    mov ax, @data
    mov ds, ax

inicio:
     mov cont,0
     mov cursorLin,12
     mov cursorCol,10
loop1:
     
     mov cx,0ffffh
 loopdelay:
     nop
  loop loopdelay   
  
        ;SETAR POSICAO DO CURSOR
        mov bh,paginaVideo
        mov dh,cursorLin
        mov dl,cursorCol
        mov ah,02h   ;CODIGO FUNCAO
        int 10h

        inc cursorCol
       
      ;ESCREVER CARACTER e ATRIBUTO 
    mov al,">"
    mov bh,paginaVideo
    mov bl,caracterCor
    mov cx,caracterRepeticao
    mov ah,09h ;CODIGO FUNCAO
    int 10h
    
    inc cont
    inc caracterCor
    
    mov al,cont
    mov bl,max
    cmp al,bl
    jbe loop1
    
    mov cont,20
    mov cursorLin,12
    mov cursorCol,30
   
    loop2:
     mov cx,0ffffh
     loopdelay2:
     nop
    loop loopdelay2   
      

    ;SETAR POSICAO DO CURSOR
        mov bh,paginaVideo
        mov dh,cursorLin
        mov dl,cursorCol
        mov ah,02h   ;CODIGO FUNCAO
        int 10h

        dec cursorCol
       
      ;ESCREVER CARACTER e ATRIBUTO 
      mov al,"<"
    mov bh,paginaVideo
    mov bl,caracterCor
    mov cx,caracterRepeticao
    mov ah,09h ;CODIGO FUNCAO
    int 10h
    
    dec cont
    inc caracterCor
    
    mov al,cont
    mov bl,1
    cmp al,bl
    jae loop2
    
 
jmp inicio    
    
    
sairPrograma:
 ; Finaliza o programa
 mov ah, 4Ch  ; Funcao de saida
 int 21h      ; Chama a interrupcao para sair  

end main   