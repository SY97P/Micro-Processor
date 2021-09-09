	.ORIGIN 0x2000

	COPY R0, 0
	SWI 4
loop:
	SWI 0			; 키보드 문자 읽기 
	CMP R0, '3'		; ‘3’ 과 비교
	BR z, match		; 일치하면 match 위치로 이동
	CMP R0, '6'		; ‘6’ 과 비교
	BR z, match		; 일치하면 match 위치로 이동
 	CMP R0, '9'		; ‘9’ 와 비교
	BR np, print		; 일치하지 않으면 print 위치로 이동
match:
	COPY R0, '*'		; 출력 문자를 ‘*’ 로 변경
print:
	SWI 1			; R0의 문자를 화면에 출력
	BR nzp, loop		; 다시 loop 위치로 이동
