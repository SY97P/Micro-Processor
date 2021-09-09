int limit;

main()
{
	char key;
	int value;
	limit = 0;

	while(1) {
		key = getchar();		// read operation key
		getchar();		// read a space after op
		value = atoi(key);	// To transfer char to int
		
		counter(value);
	}
}

counter(int n) 
{
	int current;
	
	current = n;
	while(current>=limit) {
		putchar(current);
		current = current-1;
	}
}

