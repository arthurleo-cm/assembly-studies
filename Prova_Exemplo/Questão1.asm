;BASE
.model small
.stack 100h

;AREA PARA DECLARACAO DE VARIAVEIS
.data
diaEspec db 34h
mesEspec db 03h
anoEspec db 026h
MSGER db "A data ? invalida$"
MSGOK db "A data est? ok$"

.code
main:
 mov ax, @data
 mov ds, ax  
    
 mov ah,04h
 int 1ah
 
 cmp dl,diaEspec
 jne errado
 
      mov ax, @data
      mov ds, ax
      mov dx, offset MSGOK
      mov ah, 09h
      int 21h

       jmp sairPrograma
       
errado:
 ;ESCREVER TEXTO - MENSAGEM
      mov ax, @data
      mov ds, ax
      mov dx, offset MSGER
      mov ah, 09h
      int 21h

  cmp dh,mesEspec
  jne meserrado
  
  mov ax, @data
      mov ds, ax
      mov dx, offset MSGOK
      mov ah, 09h
      int 21h
      
      jmp sairPrograma
      
  meserrado:
      mov ax, @data
      mov ds, ax
      mov dx, offset MSGER
      mov ah, 09h
      int 21h
      
      
  cmp cl,anoEspec
  jne anoerrado
  
  mov ax, @data
      mov ds, ax
      mov dx, offset MSGOK
      mov ah, 09h
      int 21h
      
      jmp sairPrograma
      
  anoerrado:
   mov ax, @data
      mov ds, ax
      mov dx, offset MSGER
      mov ah, 09h
      int 21h
  
sairPrograma:

 mov ah, 4Ch  
 int 21h     

end main   
