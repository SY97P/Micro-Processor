   	.ORIGIN 0x4000
	COPY R0, 5
	STORE R0, y
	LEA R1, y
	LEA R2, x
	STR R1, R2, 0
	LDR R1, R2, 2
	STR R1, R2, 1
	SWI 1
	LOAD R0, x
	SWI 1
	LOAD R0, y
	SWI 1
	SWI 255
x: .BLOCK 2
y: .BLOCK 1