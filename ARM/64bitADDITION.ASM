	AREA PROGRAM,CODE,READONLY
	ENTRY
MAIN
	LDR R0,=VALUE1
	LDR R1,[R0]
	LDR R2,[R0,#4]
	LDR R0,=VALUE2
	LDR R3,[R0]
	LDR R4,[R0,#4]
	ADDS R6,R2,R4
	ADC R5,R1,R3
	LDR R0,=RESULT
	STR R5,[R0]
	STR R6,[RO,#4]
	
	SWI &11
VALUE1 DCD &BBBBBBBB,&AAAAAAAA
VALUE2 DCD &CCCCCCCC,&FFFFFFFF
RESULT DCD &0
	END