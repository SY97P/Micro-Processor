	.ORIGIN 0x2000
	;LOAD R0, 0
	;SWI 4
loop:
	SWI 0			; Ű���� ���� �б� 
	AND R1, R0, 0x01		; %2 �������� ¦���� Ȧ���� ����
	CMP R1, 1		; R1�� 1�� ��
	BR np, match		; ��ġ���� ������ match ��ġ�� �̵�
	BR z, print		; 1�� ��ġ�ϸ� Ȧ�� print�� �̵�
match:
	COPY R0, '*'		; ��� ���ڸ� ��*�� �� ����
print:
	SWI 1			; R0�� ���ڸ� ȭ�鿡 ���
	CMP R0, '+'		;
	BR z, end			;
	BR nzp, loop		; �ٽ� loop ��ġ�� �̵�
end:
	SWI 255
