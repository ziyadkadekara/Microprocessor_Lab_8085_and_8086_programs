;Develop and execute an ALP to compute factorial of a positive integer
;number using recursive procedure.


DATA SEGMENT
    NUM DW 0006H
    FACT DW ?
DATA ENDS

ASSUME CS:CODE,DS:DATA

CODE SEGMENT

START: MOV AX,DATA
       MOV DS,AX
       MOV AX,01H
       MOV BX,NUM
       CMP BX,0000H
       JZ X1
       CALL FACT1

X1:    MOV FACT,AX
       MOV FACT+2,DX
       
       MOV AH,4CH
       INT 21H
       
FACT1 PROC
    CMP BX,01H
    JZ X
    PUSH BX
    DEC BX
    CALL FACT1
    POP BX
    MUL BX
    RET
    
X:  MOV AX,01H
    RET
    FACT1 ENDP

CODE ENDS
END START