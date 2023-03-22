.MODEL SMALL
.STACK 100H
.DATA
INPUT DB ?

.CODE

MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV INPUT,AL
    
    CMP INPUT,"A"
    JE CARRIAGE
    
    CMP INPUT,'B'
    JE EXECUTE
    
    CARRIAGE:
    MOV AH,2
    MOV DL,13
    JMP EXIT
    
    EXECUTE:
    MOV AH,2
    MOV DL,10
    JMP EXIT
    
    
    
    
    EXIT:
    INT 21H
    MAIN ENDP
END MAIN