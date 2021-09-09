// print in reverse order
char word[100];
char word2[100];
int main()
{
    while (1) {
        puts("input: ");
        gets(word);
        reverse();
        puts(word2);
        putchar('\n');
    }
}

int reverse()
{
    int i, i2;

    i = 0;
    while (word[i] != 0)
        i = i + 1;

    i2 = 0;
    while (i > 0) {
        i = i - 1;
        word2[i2] = word[i];
        i2 = i2 + 1;
    }
    word2[i2] = 0;
}
