.model small
.stack 100h
.data  
 num db "Enter a number of two digit : $"
 s db 10,13,"The sum of digit : $"
 a db ?
 b db ?
 
 .code
   main proc
    
    
      mov ax,@data
      mov ds,ax
      
      mov ah,9
     lea dx,num
      int 21h
    
     mov ah,1
     int 21h
     mov a,al
     int 21h
     mov b,al
     
     sub a,48
     sub b,48
    
     mov ah,9
     lea dx,s
     int 21h
     mov al,b    
     
     add a,al
     mov ah,2
     mov dl,a;
     add dl,48
     int 21h
     
    
    exit:
    mov ah,4ch
    int 21h
    main endp
   end main
