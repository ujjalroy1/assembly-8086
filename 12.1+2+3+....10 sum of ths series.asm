;1+2+...10
.model small
.stack 100h  

 .code
main proc 
    
    
        mov bl,0
        mov cl,1
        for:
            add bl,cl
            cmp cl,10
            jge printt
            
           inc cl
           jmp for 
    
    
      printt:  
      
        mov al,bl 
        mov ch,10
        div ch
        mov bh,ah
      
       mov ah,2
       mov dl,al  
       add dl,48
       int 21h
      
       mov dl,bh   
       add dl,48
       int 21h
    
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main