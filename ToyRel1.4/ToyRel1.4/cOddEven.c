char input;				// �Ǻ��� ����(�Է¹��� ����)�� ���������� �Ҵ�
main()
{
	char output;			// ����� ���� ��������
    	while (1) {
		input = getchar();		// �Ǻ��� ���� �б�
		output = check(input);	// �� ���ڸ� ¦�� �Ǻ� �Լ� �μ��� ���
		putchar(output);		// ��ȯ���� ���������� �����Ͽ� ���		
	}
}

char check(char ch) 
{					// ¦�� �Ǻ� �Լ�
	char value;			// �Լ� ��ȯ���� ���� ��������
	if(ch == '0')			// ¦����� *�� ��ȯ
		value = '*';
	else if(ch == '2')
		value = '*';
	else if(ch == '4')
		value = '*';
	else if(ch == '6')
		value = '*';
	else if(ch == '8')
		value = '*';
	else				// Ȧ����� ���� �׷��� ��ȯ
		value = ch;
	return value;			// �Լ��� ��ȯ��
}
