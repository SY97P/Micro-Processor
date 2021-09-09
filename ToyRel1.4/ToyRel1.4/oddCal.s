	.ORIGIN 0x2000
	;LOAD R0, 0
	;SWI 4
loop:
	SWI 0			; 키보드 문자 읽기 
	AND R1, R0, 0x01		; %2 연산으로 짝수와 홀수로 나눔
	CMP R1, 1		; R1과 1을 비교
	BR np, match		; 일치하지 않으면 match 위치로 이동
	BR z, print		; 1과 일치하면 홀수 print로 이동
match:
	COPY R0, '*'		; 출력 문자를 ‘*’ 로 변경
print:
	SWI 1			; R0의 문자를 화면에 출력
	CMP R0, '+'		;
	BR z, end			;
	BR nzp, loop		; 다시 loop 위치로 이동
end:
	SWI 255
