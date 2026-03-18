;Informar se um valor ? menor,igual ou maior que outro
.model small
.stack 100h

.data

MSGMAIOR db "AL ? MAIOR QUE BL"
MSGMENOR db "AL MENOR BL$"
MSGIGUAL db "AL IGUAL BL$"
paginaVideo db 0
cursorLin db 2
cursorCol db 2

.code
main:
;aqui estou setando a posi??o que vai aparecer o resultado
mov cursorLin,8
    mov cursorCol,10
    mov bh,paginaVideo
    mov dh,cursorLin
    mov dl,cursorCol
    mov ah,02h   ;CODIGO FUNCAO
    int 10h
    
    
    mov al,6
    mov bl,5
    cmp al,bl
    ja maior ;DESVIA O FLUXO SE al MAIOR QUE bl
    jb menor ;DESVIA O FLUXO SE al MENOR QUE bl
    je igual ;DESVIA O FLUXO SE al IGUAL A bl
    jmp sairPrograma
    
    
maior:
    mov ax, @data
    mov ds, ax
    mov dx, offset MSGMAIOR
    mov ah, 09h
    int 21h
    jmp sairPrograma
    
menor:
    mov ax, @data
    mov ds, ax
    mov dx, offset MSGMENOR
    mov ah, 09h
    int 21h
    jmp sairPrograma
    
igual:
     mov ax, @data
    mov ds, ax
    mov dx, offset MSGIGUAL
    mov ah, 09h
    int 21h
    jmp sairPrograma
    
end main