.model small
.stack 100h
.data

msg db "1" , "$"
msg1 db "0" , "$"
msg2 db "-1", "$"

.code

main proc
    
    ;problem 4
    
    MOV AX,@DATA 
    MOV DS,AX  
     
    mov ah,1
    int 21h
    
    cmp al,0
    jg a_pos
    je a_equ
    jl a_les
    
    a_pos:
    
    lea dx,msg
    mov ah,9
    jmp exit
    
    a_equ:
    lea dx,msg1
    mov ah,9
    
    jmp exit
    
    a_les:
    lea dx,msg2 
    mov ah,9
    
    jmp exit
    
    exit:
    int 21h
    
    main endp
end main