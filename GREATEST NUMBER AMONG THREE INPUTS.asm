
; GREATEST NUMBER AMONG THREE INPUTS

.MODEL SMALL
.STACK 100H
.DATA

VAR DB ?

.CODE
MAIN PROC
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    INT 21H
    MOV CL,AL
    
    CMP BL,BH
    JGE L2
    
    L1:
    
    CMP BH,CL
    JGE LL1
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    LL1:
    
    MOV AH,2
    MOV DL,BH
    INT 21H
    
    JMP EXIT
    
    L2:
    CMP BL,CL
    JGE LL2
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    JMP EXIT
    
    LL2:
    
    MOV AH,2
    MOV DL,BL
    INT 21H
    
    EXIT:
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN