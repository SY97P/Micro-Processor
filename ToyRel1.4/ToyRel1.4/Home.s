	.ORIGIN 0x2000

	COPY R1, 0		; ���� ���� �� R1�� 0���� �ʱ�ȭ
loop:	
	SWI 0			; Ű���� ���� �б� 
	ADD R1, R1, R0		; ���� ���� �Է°��� ���Ͽ� R1���� ����
	STORE R1, sum		; ���� ���� sum�� ����
	CMP R1, 20		; ���� ���� 20�� ��
	BR zp, print		; ���ų� ũ�� print ��ġ�� �̵�
	CMP R1, 20
	BR nzp, loop
print:
	LOAD R0, sum		; ����� ���� ���� ��(R1)�� R0�� ����
	SWI 1			; R0�� ���ڸ� ȭ�鿡 ���
	SWI 255

addr:	.FILL 0x5000
sum: 	.BLOCK 1