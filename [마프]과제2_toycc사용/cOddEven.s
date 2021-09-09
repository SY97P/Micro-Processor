	.ORIGIN 0x2000

_CODE:
  ; program startup code
	LEA R5, _END
	ADD R5, R5, 1024
	LINK
	BR nzp, main
	SWI 255

  ; char input;				// �Ǻ��� ����(�Է¹��� ����)�� ���������� �Ҵ�
  ; 
  ; main()
  ; 
  ; {
  ; 
  ; 	char output;			// ����� ���� ��������
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
  ; 		input = getchar();		// �Ǻ��� ���� �б�
	LINK
	BR nzp, getchar
	STORE R0, input
  ; 
  ; 		output = check(input);	// �� ���ڸ� ¦�� �Ǻ� �Լ� �μ��� ���
	SUB R5, R5, 1 
	LOAD R0, input
	STR R0, R5, 0
	LINK
	BR nzp, check
	ADD R5, R5, 1
	STR R0, R4, -1
  ; 
  ; 		putchar(output);		// ��ȯ���� ���������� �����Ͽ� ���		
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
  ; {					// ¦�� �Ǻ� �Լ�
  ; 
  ; 	char value;			// �Լ� ��ȯ���� ���� ��������
  ; 
  ; 	if(ch == '0')			// ¦����� *�� ��ȯ
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
  ; 	else				// Ȧ����� ���� �׷��� ��ȯ
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
  ; 	return value;			// �Լ��� ��ȯ��
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
