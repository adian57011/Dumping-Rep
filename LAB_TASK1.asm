.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    
    ; LAB TASK -1
    
    MOV AH,1
    INT 21H
    
    CMP AL,"A"
    
    JGE IF
    JMP ELSE
    
    
    ELSE:
    MOV CL,6
    ADD CL,48
    JMP PRINT
    
    IF:
    MOV CL,5
    ADD CL,48
    
    PRINT:
    MOV AH,2
    MOV DL,CL
    JMP EXIT
    
    
    EXIT:
    INT 21H
    MAIN ENDP
END MAIN