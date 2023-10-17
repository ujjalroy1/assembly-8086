.model small
.stack 100h
.data
   s db "Enter a lower case letter : $"    
   s1 db 10,13,"Upper case is $"  
   a db ?
 .code
  main proc
        
      
         mov ax,@data
         mov ds,ax;
         
         mov ah,9
         lea dx,s
         int 21h
         
         mov ah,1
         int 21h
         
         mov a,al
         sub a,32
         
         mov ah,9
         lea dx,s1
         int 21h
         
         mov ah,2
         mov dl,a
         int 21h
           
      
    
    exit:
    mov ah,4ch
    int 21h
    main endp
  end main