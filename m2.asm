PUBLIC M2

DATASEG SEGMENT
DATASEG ENDS

STACKSEG SEGMENT
STACKSEG ENDS

CODESEG SEGMENT
    ASSUME CS:CODESEG,DS:DATASEG,SS:STACKSEG
START:
M2 PROC
    MOV DL,DS:[5]
    MOV AH,02H
    INT 21H

    MOV DL,DS:[6]
    MOV AH,02H
    INT 21H

    RETF
M2 ENDP

CODESEG ENDS
    END START