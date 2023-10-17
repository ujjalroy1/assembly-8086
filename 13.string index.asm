.model small
.stack 100h
.data

s db "This is ujja $"    

.code
main proc 
    
    
           mov ax,@data
           mov ds,ax
     
    
          mov si, offset s
      
           

     
      for:
       mov al,[si]
       cmp al,'u'
       je printt
       cmp al,'$'
       je L1
       inc si  
       jmp for
        
    
   L1: 
    mov ah,2
   mov dl,'N'
   int 21h
   jmp exit
    
   printt:
   mov ah,2
   mov dl,'Y'
   int 21h
   jmp exit 
    
    
    
    exit:
    mov ah,4ch
    int 21h 
    
    main endp
end main