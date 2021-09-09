	.ORIGIN 0x2000
	;COPY R0, 0		;
	;SWI 4			;
loop:
	SWI 0			; 키보드 문자 읽기
	AND R1, R0, 1		; R0이 짝수면 R1 = 0 R0가 홀수면 R1 = 1
	BR z, even		; R1 = 1이라면 *을 출력하기 위해 even로 이동
	BR np, print 		; 일치하지 않으면 print 위치로 이동
even:
	COPY R0, '*'		; 출력 문자를 ‘*’ 로 변경
print:
	CMP R0, '+'		; 프로그램 종료를 위한 +키
	BR z, end		; 입력이 +라면(R0 = +), end로 이동
	SWI 1			; R0의 문자를 화면에 출력
	BR nzp, loop		; 다시 loop 위치로 이동
end:
	SWI 255			; 프로그램 종료
