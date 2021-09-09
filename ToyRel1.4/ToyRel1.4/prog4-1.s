	.ORIGIN 0x2000

	LOAD R1, x
	LOAD R2, y
	ADD R3, R1, R2
	STORE R3, z
loop:	BR nzp loop

x:	.FILL 2
y:	.FILL 3
z:	.BLOCK 1
