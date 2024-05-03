
; CASE CONVERSION

.MODEL SMALL
.STACK 100H
.DATA

VAR DB ?

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,1
    INT 21H
    MOV VAR,AL
    
    MOV AH,2
    MOV DL,' '
    INT 21H
    
    MOV AH,2
    SUB VAR,20H
    MOV DL,VAR
    INT 21H
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN