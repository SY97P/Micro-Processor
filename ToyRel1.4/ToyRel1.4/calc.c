main()
{
	char op;
	int num1, num2;
	int result;

	while(1) {
		num1 = getint();	// read first integer
		op = getchar();		// read operation key
		getchar();		// read a space after op

		num2 = getint();	// read second integer

		getchar();		// read '='
		putchar(' ');

		// calculate the expression
		result = calc(num1, num2, op);

		// print the result
		putint(result);

		putchar('\n');
	}
}

int calc(int x, int y, char op)
{
	int val;

	if (op == '+')
		val = x + y;
	else if (op == '-')
		val = x - y;
	else if (op == '*')
		val = x * y;
	else if (op == '/')
		val = x / y;
	else
		val = 0;
	return val;
}

int getint()
{
    int num;
    char ch;

    num = 0;
    while (1) {
        ch = getchar();
        if (ch < '0')
            return num;
        if (ch > '9')
            return num;
        num = num * 10 + ch - '0';
    }
}

putint(int num)
{
    int quot;

    if (num < 0) {
        putchar('-');
        num = -num;
    }
    quot = num / 10;
    if (quot != 0)
        putint(quot); 
    putchar(num % 10 + '0');

}
