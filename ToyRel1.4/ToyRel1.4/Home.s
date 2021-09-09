	.ORIGIN 0x2000

	COPY R1, 0		; 더한 값이 들어갈 R1을 0으로 초기화
loop:	
	SWI 0			; 키보드 문자 읽기 
	ADD R1, R1, R0		; 더한 값과 입력값을 더하여 R1으로 저장
	STORE R1, sum		; 더한 값을 sum에 저장
	CMP R1, 20		; 더한 값을 20과 비교
	BR zp, print		; 같거나 크면 print 위치로 이동
	CMP R1, 20
	BR nzp, loop
print:
	LOAD R0, sum		; 출력을 위해 더한 값(R1)을 R0에 저장
	SWI 1			; R0의 문자를 화면에 출력
	SWI 255

addr:	.FILL 0x5000
sum: 	.BLOCK 1