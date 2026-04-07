;BASE
.model small
.stack 100h

;AREA PARA DECLARACAO DE VARIAVEIS
.data
RESULTADO dw 0 
SOMA dw 0
atual db 0
.code
main:

 mov ax, @data
 mov ds, ax  
 
 mov ax,0
mov atual,0
 
loop:
;come?o
mov SOMA,0
mov ax,atual
mov bx,2
mul bx
mov SOMA,ax

; 2 vezes atual
mov ax,2
mov bx,SOMA
sub ax,bx
mov SOMA,ax


mov ax,SOMA
mov bx,2
add ax,bx

mov RESULTADO, ax
;


inc atual
mov al,atual
cmp al,10
jbe loop 
 

sairPrograma:

 mov ah, 4Ch  
 int 21h     

end main   