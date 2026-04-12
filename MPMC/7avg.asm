MOV R1, #05
MOV B, R1
MOV R2, #00H
MOV DPTR, #5500H
UP: MOVX A, @DPTR
        ADD A, R2
        MOV R2, A
        INC DPTR
        DJNZ R1, UP
        MOV A, R2
        DIV AB
        MOVX @DPTR, A
        INC DPTR
        MOV A, B
        MOVX @DPTR, A
HLT:     SJMP HLT
         END
