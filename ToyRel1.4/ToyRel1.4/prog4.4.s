	.ORIGIN 0x2000

	COPY R0, 0
	SWI 4
loop:
	SWI 0			; Ű���� ���� �б� 
	CMP R0, '3'		; ��3�� �� ��
	BR z, match		; ��ġ�ϸ� match ��ġ�� �̵�
	CMP R0, '6'		; ��6�� �� ��
	BR z, match		; ��ġ�ϸ� match ��ġ�� �̵�
 	CMP R0, '9'		; ��9�� �� ��
	BR np, print		; ��ġ���� ������ print ��ġ�� �̵�
match:
	COPY R0, '*'		; ��� ���ڸ� ��*�� �� ����
print:
	SWI 1			; R0�� ���ڸ� ȭ�鿡 ���
	BR nzp, loop		; �ٽ� loop ��ġ�� �̵�
