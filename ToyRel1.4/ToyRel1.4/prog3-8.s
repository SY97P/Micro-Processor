   .ORIGIN 0x2000

   LEA R1, table    	; 배열 table 의 주소를 R1에 기록
   COPY R2, 'A'     	; 문자 ‘A'의 ASCII 코드 (0x41)
   COPY R0, 26      	; 반복할 회수 (26문자)
loop: STR R2, R1, 0	 ; R2의 문자를 R1이 가리키는 주소에 기록 
   ADD R1, R1, 1    	; 주소를 1만큼 증가
   ADD R2, R2, 1    	; 연속된 다음 문자의 ASCII 코드로 변경
   SUB R0, R0, 1    	; 회수를 1만큼 감소
   BR p, loop      	 ; 남은 회수가 양수이면 loop으로 이동

halt: BR nzp halt   	; 제자리에서 무한 루프

table: .BLOCK 26    	; 26개의 항목을 저장하기 위한 메모리 영역

