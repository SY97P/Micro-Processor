char ch;
main()
{
    setecho(0);
    while (1) {
        ch = getchar();
        if (ch == '3')
            ch = '*';
        else if (ch == '6')
            ch = '*';
        else if (ch == '9')
            ch = '*';
        putchar(ch);
    }
}
