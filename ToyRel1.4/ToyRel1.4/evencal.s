	.ORIGIN 0x2000
	;COPY R0, 0		;
	;SWI 4			;
loop:
	SWI 0			; Ű���� ���� �б�
	AND R1, R0, 1		; R0�� ¦���� R1 = 0 R0�� Ȧ���� R1 = 1
	BR z, even		; R1 = 1�̶�� *�� ����ϱ� ���� even�� �̵�
	BR np, print 		; ��ġ���� ������ print ��ġ�� �̵�
even:
	COPY R0, '*'		; ��� ���ڸ� ��*�� �� ����
print:
	CMP R0, '+'		; ���α׷� ���Ḧ ���� +Ű
	BR z, end		; �Է��� +���(R0 = +), end�� �̵�
	SWI 1			; R0�� ���ڸ� ȭ�鿡 ���
	BR nzp, loop		; �ٽ� loop ��ġ�� �̵�
end:
	SWI 255			; ���α׷� ����
