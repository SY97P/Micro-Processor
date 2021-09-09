	.ORIGIN 0x2000 	; program start address      

	LOAD R1, value		; load value into R1
	ASR R2, R1, 3		; shift right 3 bits
	STORE R2, quot		; store R2 on quot 
	AND R2, R1, 0x07	; mask the last 3 bits
	STORE R2, remain	; store R2 on remain

halt: 	BR nzp halt		; branch here forever

value:	.FILL 0x12345		; space for value with init. val.
quot:	.BLOCK 1		; space quot without init. val.
remain:	.BLOCK 1		; space for remain without init. val.