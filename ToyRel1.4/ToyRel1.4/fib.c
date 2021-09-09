int g;
int main()
{
	int f;

	f = fib(3);

	g = f;
}

int fib(int n)
{
	int a, b;

	g = n;
	if (n <= 1)
		return n;
	a = fib(n-1);
	b = fib(n-2);

	return a + b;
}
