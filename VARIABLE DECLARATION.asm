
; Variable Declaration 

.MODEL SMALL
.STACK 100H
.DATA

VAR1 DB 5

.CODE
MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AH,2
    ADD VAR1,48
    MOV DL,VAR1
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN