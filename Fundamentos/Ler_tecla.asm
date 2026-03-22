.model small
.stack 100h

.data

.code
main:

mov ax, @data
mov ds, ax

mov ah,00h
int 16h

mov dl,al
mov ah,02h
int 21h


mov ah,4Ch
int 21h

end main
