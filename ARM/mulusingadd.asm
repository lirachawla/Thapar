    AREA PROGRAM,CODE,READONLY
ENTRY
    LDR R0,value1
    LDR R1,value2
    MOV R2,R1
    MOV R3,#0x01
loop
    ADD R3,#0x01
    ADD R2,R1
    CMP R3,R0
    BNE loop
    AREA PROGRAM,DATA,READONLY
value1 DCD &00000002
value2 DCD &00000006
    END
		
		
		