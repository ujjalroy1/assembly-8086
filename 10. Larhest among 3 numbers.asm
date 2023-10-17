.model small
.stack 100h
.data
 s db " is greater $"
 s1 db "Enter three value : $"
 .code
 main proc
    
       mov ax,@data
       mov ds,ax
       
        mov ah,9
        lea dx,s1
        int 21h
        
        mov ah,1
        int 21h
        mov bl,al
        
        int 21h
        mov bh,al
        
        int 21h
        mov cl,al  
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        
        cmp bl,bh
        jg L1
        
        cmp bh,cl
        jg L3
        
        jmp L4
        
        
        
        L1:
        cmp bl,cl
        jg L2
        
        jmp L4
        
        
        L2:
        
        mov ah,2
        mov dl,bl
        int 21h
        
        mov ah,9
        lea dx,s
        int 21h
       jmp exit
    
        L3:
        
         mov ah,2
        mov dl,bh
        int 21h
        
        mov ah,9
        lea dx,s
        int 21h
       jmp exit  
       
       L4:
            mov ah,2
        mov dl,cl
        int 21h
        
        mov ah,9
        lea dx,s
        int 21h
       jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
 end main