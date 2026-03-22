.model small
.stack 100h

.data
tecla db ?
.code
main:

mov ax, @data
mov ds, ax

mov ah,00h
int 16h
mov tecla,al

mov ah,4Ch
int 21h

end main