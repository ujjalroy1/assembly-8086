.model small
.stack 100h
.data
 a db ?
 b db ?   
 ad db ? 
 su db ?
 new db 10,13,'$'  
 mes db "The sub : $"
 mu  db ?
 divv db ?
 print equ mov ah,2
 koro equ mov dl
 eita equ int 21h
 
 .code
  main proc
        
        mov ax,@data
        mov ds,ax
        
        mov ah,1
        int 21h
        mov a,al
        
         mov ah,9
        lea dx,new
        int 21h
         
        mov ah,1
        int 21h
        mov b,al   
        
       
        mov ah,9 
        lea dx,new
        int 21h  
        
        sub a,48
        sub b,48
        
        mov al,b; ;;addition
        add al,a
        mov ad,al    
        
        add ad,48
        
         print 
         koro,ad    ;;print sum
         eita
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov al,a
        sub al,b  ;; sub 
        add al,48
        mov su,al   
        
        mov ah,9
        lea dx, mes ;;message prin
        int 21h
        
        mov ah,2
        mov dl,su     ;; sub
        int 21h  
        
         mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h   
            
            
            
        
        mov al,a
        mul b
        
        mov mu,al      
        add mu,48  
        
       
     
        
        mov ah,2
        mov dl,mu     ;; mul
        int 21h   
                 
                 
        
         mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h   
        
          
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
  end main