   .ORIGIN 0x2000

   LEA R1, table    	; �迭 table �� �ּҸ� R1�� ���
   COPY R2, 'A'     	; ���� ��A'�� ASCII �ڵ� (0x41)
   COPY R0, 26      	; �ݺ��� ȸ�� (26����)
loop: STR R2, R1, 0	 ; R2�� ���ڸ� R1�� ����Ű�� �ּҿ� ��� 
   ADD R1, R1, 1    	; �ּҸ� 1��ŭ ����
   ADD R2, R2, 1    	; ���ӵ� ���� ������ ASCII �ڵ�� ����
   SUB R0, R0, 1    	; ȸ���� 1��ŭ ����
   BR p, loop      	 ; ���� ȸ���� ����̸� loop���� �̵�

halt: BR nzp halt   	; ���ڸ����� ���� ����

table: .BLOCK 26    	; 26���� �׸��� �����ϱ� ���� �޸� ����

