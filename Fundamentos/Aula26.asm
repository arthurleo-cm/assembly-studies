;BASE
.model small
.stack 100h

;AREA PARA DECLARACAO DE VARIAVEIS
.data

MSG db "I am Learning English$"
MSG2 db "Ich lerne Deutsch$"

paginaVideo db 0
cursorLin db 0
cursorCol db 0
;PROGRAMA PRINCIPAL
.code
main:
    mov ax, @data
    mov ds, ax
    
    mov cursorLin,10
    mov cursorCol,5
    mov bh,paginaVideo
    mov dh,cursorLin
    mov dl,cursorCol
    mov ah,02h
    int 10h
    
    mov ax,@data
    mov ds,ax
    mov dx,offset MSG
    MOV ah, 09h
    int 21h
    
    
    mov cursorLin,8
    mov cursorCol,20
    mov bh,paginaVideo
    mov dh,cursorLin
    mov dl,cursorCol
    mov ah,02h
    int 10h

     mov ax,@data
     mov ds,ax
     mov dx,offset MSG2
     MOV ah, 09h
     int 21h
    
sairPrograma:

 mov ah, 4Ch  
 int 21h     

end main   