   .ORIGIN 0x2000
   LOAD R1, value  	 ; �޸� value �κ��� ���� R1�� �о����
   LSL R2, R1, 3    	; R2 �� R1 x 8 (3��Ʈ �������� �̵�)
   LSL R3, R1, 1    	; R3 �� R1 x 2 (1��Ʈ �������� �̵�)
   ADD R1, R2, R3   	; R1 �� (R1 x 8) + (R1 x 2) = R1 x 10
   STORE R1, result	 ; ��� ����� remain �κп� ����
halt: BR nzp halt   	; ���ڸ����� ���� ����
value: .FILL 123456	 ; �־��� ����
result: .BLOCK 1   	 ; ����� �����ϱ� ���� �޸� ����


