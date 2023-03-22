.model small
.stack 100h
.data

.code

main proc
    
    ;problem 3
    
    mov ah,1
    int 21h
    mov bl,al ; storing at bl
    
    mov ah,1  ; storing at al
    int 21h
    
    cmp al,bl
    
    jl print_a
    
    mov ah,2
    mov dl,bl
    jmp exit
    
    print_a:
    mov ah,2
    mov dl,al
    jmp exit
    
    
    
    
    
    exit:
    int 21h
    
    main endp
end main
