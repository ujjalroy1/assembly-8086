.model
.stack 100h
.code
main proc
    
      mov cl,'0'
      
      for:
         cmp cl,'9'
         jg exit
         mov ah,2
         mov dl,cl
         int 21h
         inc cl
         jmp for
      
      
      exit:
      mov ah,4ch
      int 21h
      main endp
end main