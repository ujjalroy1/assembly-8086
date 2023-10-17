.model small
.stack 100h  
.data
 equal db 10,13,"eual$"
 greater db 10,13,"greater$"
 less db  10,13,"Less$"
.code
 main proc
    
           mov ax,@data
           mov ds,ax
        
    mov ah,1
    int 21h
    
    mov bl,al
    
    int 21h
    mov bh,al
    
    cmp bl,bh
    je eq
    
    cmp bl,bh
    jg g
    jmp le 
    
    
    
    eq:    
        
        mov ah,9
        lea dx,equal
        int 21h
        jmp exit
    
    
    le:
        mov ah,9
        lea dx,less
        int 21h
        jmp exit
    
    g:
            
         mov ah,9
        lea dx,greater
        int 21h
        jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    main endp
 end main