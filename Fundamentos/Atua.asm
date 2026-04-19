;BASE
.model small
.stack 100h
; Complemta??o de c?digo do controle do curso limitando o tamanha da area de trabalho, ou seja n?o pode ultrapassar o volume dispon?vel
;AREA PARA DECLARACAO DE VARIAVEIS
.data
cursorLin db 2
cursorCol db 2
paginaVideo db 0
MSG db "*$"
tecla db 0
scanCode db 0
caracterRepeticao dw 1
dlin db 1
dcol db 1
raqueteCol db 2 
raqueteLin db 2
raqueteTam dw 18
caracterCor db 28h

.code


main:
    mov ax, @data
    mov ds, ax
    
    
     mov cursorLin,5
    mov cursorCol,10
    
    mov raqueteLin,18
    mov raqueteCol,20
    
    mov dcol,1
    mov dlin,1   
   
    
loop:
    
    
      ;POSICIONAR O CURSO
      mov bh,paginaVideo
      mov dh,cursorLin
      mov dl,cursorCol
      mov ah,02h   
      int 10h

      mov al,"*"
     mov bh,paginaVideo
     mov cx,caracterRepeticao
     mov ah,0Ah  
     int 10h 
     
     
     ; COLOCANDO A RAQUETE
     mov ah,02h
    mov bh,paginaVideo
    mov dh,raqueteLin
    mov dl,raqueteCol
    int 10h
    
    mov al,"_"
     mov bh,paginaVideo
     mov cx,raqueteTam
     mov bl,31h
     mov ah,0Ah  
     int 10h 
     
     mov ah,10h
     int 16h
     mov tecla,al
     mov scanCode,ah
     
     ;RAQUETE E CONTROLE
     ;apagar a raquete
     
    mov ah,02h
    mov bh,paginaVideo
    mov dh,raqueteLin
    mov dl,raqueteCol
    int 10h
    
    mov al,""
     mov bh,paginaVideo
     mov cx,raqueteTam
     mov bl,0h
     mov ah,0Ah  
     int 10h 
    
    
     
     cmp tecla,","
     jnz desvioraquete001
     cmp raqueteCol,0
     je  desvioraquete001
     dec raqueteCol
     
     

     
 desvioraquete001:
     cmp tecla,"."
     jnz desvioraquete002
     cmp raqueteCol,60
     je desvioraquete002 
     inc raqueteCol
     
     
 desvioraquete002:    
     
     
     
     
     
     
     
    mov ah,10h 
    int 16h
    mov tecla,al
    mov scanCode,ah
  
    mov al,cursorCol
    mov bl,dcol
    add al,bl
    mov cursorCol,al
    
    mov al,cursorLin
    mov bl,dlin
    add al,bl
    mov cursorLin,al
   
    cmp cursorLin,23
    jbe desvio1
    mov dlin,-1
    
    desvio1:  
   
    cmp cursorCol,78
    jbe desvio2
    mov dcol, -1
    
    desvio2:
    
    cmp cursorCol,1
    jae desvio3
    mov dcol, 1
    
desvio3:
    cmp cursorLin,1
    jae desvio4
    mov dlin,1
    
desvio4:
    
jmp loop
  
sairPrograma:

 mov ah, 4Ch  
 int 21h     

end main   
