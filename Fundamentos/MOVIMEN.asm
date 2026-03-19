;BASE
.model small
.stack 100h

;AREA PARA DECLARACAO DE VARIAVEIS
.data
cursorLin db 2
cursorCol db 2
paginaVideo db 0
MSG db "*$"
tecla db 0
scanCode db 0


.code
main:
    mov ax, @data
    mov ds, ax
    
    mov cursorLin,12
    mov cursorCol,40
    
loop:
      ;POSICIONAR O CURSO
      mov bh,paginaVideo
      mov dh,cursorLin
      mov dl,cursorCol
      mov ah,02h   
      int 10h

      ;ESCREVER MENSAGEM
      mov ax, @data
      mov ds, ax
      mov dx, offset MSG
      mov ah, 09h
      int 21h

    ;LER UMA TECLA
    mov ah,10h 
    int 16h
    mov tecla,al
    mov scanCode,ah
  
    cmp tecla,"w"
    jne verificars
    dec cursorLin
verificars:
    
    cmp tecla,"a"
    jne verificard
    dec cursorCol
verificard:
 
    cmp tecla,"s"
    jne verificarw
    inc cursorLin

verificarw:
  
    cmp tecla,"d"
    jne verificara
    inc cursorCol
verificara:;
    
jmp loop


    
    
    
  
sairPrograma:

 mov ah, 4Ch  
 int 21h     

end main   