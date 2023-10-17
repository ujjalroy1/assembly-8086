.model small
.stack 100h
.data
   s db "Enter a hexa digit : $"    
   s1 db 10,13,"The number is $"  
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
        
        mov ah,9
        lea dx,s1
        int 21h
        
        mov ah,2
        mov dx,49
        int 21h
         
        sub a,'A'
        add a,48
        
        mov ah,2
        mov dl,a
        int 21h 
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
  end main