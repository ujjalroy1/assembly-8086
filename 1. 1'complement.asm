.model small
.stack 100h
.data
  a db ?
  
.code
    main proc
        
        mov ax,@data
        mov ds,ax
        
        mov ah,1
        int 21h
        mov a,al
        
        neg a
        sub a,1
        
        mov ah,2
        mov dl,a
        int 21h
        
        exit:
         mov ah,4ch
         int 21h
         main endp
    end main