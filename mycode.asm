.model small
.stack 100h
.data

.code
main proc
    ;problem 1
    
    mov ah,1
    int 21h
    mov bl,al ;storing at bl
    
    mov ah,1
    int 21h     ; storing at al
    
    cmp al,bl
    
    jg a_big
    
    mov cl,bl
    
    a_big:
    mov cl,al
    
    
    
    
    exit:
    
    main endp
end main