char input;				// 판별할 숫자(입력받은 문자)를 전역변수로 할당
main()
{
	char output;			// 출력을 위한 지역변수
    	while (1) {
		input = getchar();		// 판별할 문자 읽기
		output = check(input);	// 그 문자를 짝수 판별 함수 인수로 사용
		putchar(output);		// 반환값을 지역변수에 저장하여 출력		
	}
}

char check(char ch) 
{					// 짝수 판별 함수
	char value;			// 함수 반환값에 대한 지역변수
	if(ch == '0')			// 짝수라면 *을 반환
		value = '*';
	else if(ch == '2')
		value = '*';
	else if(ch == '4')
		value = '*';
	else if(ch == '6')
		value = '*';
	else if(ch == '8')
		value = '*';
	else				// 홀수라면 문자 그래도 반환
		value = ch;
	return value;			// 함수의 반환값
}
