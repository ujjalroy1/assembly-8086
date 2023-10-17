.model small
.stack 100h
.code
main proc
    
      mov cl,0
      for:
         mov ah,2
         mov dl,cl
         add dl,'A'
         int 21h
         
       
         
         mov bl,'Z'   
         sub bl,cl
         mov ah,2
         mov dl,bl
         int 21h  
    
         inc cl 
         cmp cl,13
         jge exit
         jmp for
         
         
         exit:
         mov ah,4ch
         int 21h
         main endp
end main
      
      