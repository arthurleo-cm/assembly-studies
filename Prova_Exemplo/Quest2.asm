;BASE
.model small
.stack 100h

;AREA PARA DECLARACAO DE VARIAVEIS
.data
VA db 1
VB db 3
VC db 6
VD db 7
VE db 8
VF db 4
VG dw 9
cursorLin db 2
cursorCol db 2
paginaVideo db 0
MSGCORRETO db "O c?digo est? correto$"
MSGERROR db "O c?digo est? errado $"
total db 0
caracterRepeticao dw 1

.code
main:
 mov ax, @data
 mov ds, ax  
    

    
    
    ;calculando o valor 
    ;mov ax,0
     mov al,VA
     mov bl,VB
     add al,bl
     mov bl,VC
     add al,bl
     mov bl,VD
     add al,bl
     mov bl,VE
     add al,bl
     mov bl,VF
     add al,bl
    
     mov total,al
     mov dx,0
     mov ax,0
     mov al,total
     mov cx,10
     div cx
     
     cmp dx,VG
     jne error
     
    mov cursorLin,7
    mov cursorCol,10
    mov bh,paginaVideo
    mov dh,cursorLin
    mov dl,cursorCol
    mov ah,02h   ;CODIGO FUNCAO
    int 10h

     mov ax, @data
    mov ds, ax
    mov dx, offset MSGCORRETO
    mov ah, 09h
    int 21h

 jmp sairPrograma
error:   
     mov cursorLin,7
    mov cursorCol,26
    mov bh,paginaVideo
    mov dh,cursorLin
    mov dl,cursorCol
    mov ah,02h   ;CODIGO FUNCAO
    int 10h   
      mov ax, @data
    mov ds, ax
    mov dx, offset MSGERROR
    mov ah, 09h
    int 21h   

    
    
sairPrograma:

 mov ah, 4Ch  
 int 21h     

end main   