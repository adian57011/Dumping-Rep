.model small
.stack 100h
.data

.code

main proc
        
        ;problem 2
        mov ah,1
        int 21h
        
        cmp al,0
        
        jl a_neg
        
        a_neg:
        
        neg al
        mov bl,al
    
    
    exit:
        
    
    main endp
end main