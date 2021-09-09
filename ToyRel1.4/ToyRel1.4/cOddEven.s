	.ORIGIN 0x2000

_CODE:
  ; program startup code
	LEA R5, _END
	ADD R5, R5, 1024
	LINK
	BR nzp, main
	SWI 255

  ; char input;				// 판별할 숫자(입력받은 문자)를 전역변수로 할당
  ; 
  ; main()
  ; 
  ; {
  ; 
  ; 	char output;			// 출력을 위한 지역변수
  ; 
  ;     	while (1) {
main:
	SUB R5, R5, 2
	STR R6, R5, 1
	STR R4, R5, 0
	COPY R4, R5
	SUB R5, R5, 1

_L2:
	COPY R0, 1
	CMP R0, 0
	BR z, _L3
  ; 
  ; 		input = getchar();		// 판별할 문자 읽기
	LINK
	BR nzp, getchar
	STORE R0, input
  ; 
  ; 		output = check(input);	// 그 문자를 짝수 판별 함수 인수로 사용
	SUB R5, R5, 1 
	LOAD R0, input
	STR R0, R5, 0
	LINK
	BR nzp, check
	ADD R5, R5, 1
	STR R0, R4, -1
  ; 
  ; 		putchar(output);		// 반환값을 지역변수에 저장하여 출력		
	SUB R5, R5, 1 
	LDR R0, R4, -1
	STR R0, R5, 0
	LINK
	BR nzp, putchar
	ADD R5, R5, 1
  ; 
  ; 	}
	BR nzp, _L2
_L3:
  ; 
  ; }

_L1:	COPY R5, R4
	LDR R4, R5, 0
	LDR R6, R5, 1
	ADD R5, R5, 2
	RET
  ; 
  ; 
  ; char check(char ch) 
  ; 
  ; {					// 짝수 판별 함수
  ; 
  ; 	char value;			// 함수 반환값에 대한 지역변수
  ; 
  ; 	if(ch == '0')			// 짝수라면 *을 반환
check:
	SUB R5, R5, 2
	STR R6, R5, 1
	STR R4, R5, 0
	COPY R4, R5
	SUB R5, R5, 1

	LDR R0, R4, 2
	COPY R1, 48
	CMP R0, R1
	BR np, _L5
  ; 
  ; 		value = '*';
	COPY R0, 42
	STR R0, R4, -1
  ; 
  ; 	else if(ch == '2')
	BR nzp, _L6
_L5:
	LDR R0, R4, 2
	COPY R1, 50
	CMP R0, R1
	BR np, _L7
  ; 
  ; 		value = '*';
	COPY R0, 42
	STR R0, R4, -1
  ; 
  ; 	else if(ch == '4')
	BR nzp, _L8
_L7:
	LDR R0, R4, 2
	COPY R1, 52
	CMP R0, R1
	BR np, _L9
  ; 
  ; 		value = '*';
	COPY R0, 42
	STR R0, R4, -1
  ; 
  ; 	else if(ch == '6')
	BR nzp, _L10
_L9:
	LDR R0, R4, 2
	COPY R1, 54
	CMP R0, R1
	BR np, _L11
  ; 
  ; 		value = '*';
	COPY R0, 42
	STR R0, R4, -1
  ; 
  ; 	else if(ch == '8')
	BR nzp, _L12
_L11:
	LDR R0, R4, 2
	COPY R1, 56
	CMP R0, R1
	BR np, _L13
  ; 
  ; 		value = '*';
	COPY R0, 42
	STR R0, R4, -1
  ; 
  ; 	else				// 홀수라면 문자 그래도 반환
	BR nzp, _L14
_L13:
  ; 
  ; 		value = ch;
	LDR R0, R4, 2
	STR R0, R4, -1
_L14:
_L12:
_L10:
_L8:
_L6:
  ; 
  ; 	return value;			// 함수의 반환값
	LDR R0, R4, -1
  ; 
  ; }

_L4:	COPY R5, R4
	LDR R4, R5, 0
	LDR R6, R5, 1
	ADD R5, R5, 2
	RET
  ; 
getchar:
	SWI 0
	RET
putchar:
	LDR R0, R5, 0
	SWI 1
	RET

_DATA:

input: .BLOCK 1

_END:
