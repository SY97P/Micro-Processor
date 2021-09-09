   .ORIGIN 0x2000

   COPY R0, 0       	 ; 합을 저장할 R0를 0으로 초기화
   LOAD R1, addr    	 ; 데이터 주소 addr의 값을 R1에 저장 
   COPY R2, 1000   	 ; 회수를 R2에 설정
loop:
   LDR R3, R1, 0 	 ; R1이 가리키는 주소에서 데이터 읽기
   ADD R0, R0, R3   	 ; 합 R0에 데이터 합산
   ADD R1, R1, 1    	 ; 주소 R1을 다음 주소로 증가
   SUB R2, R2, 1    	 ; 남은 회수를 1만큼 감소
   BR p, loop       	 ; 남은 회수가 양수이면 반복실행
   STORE R0, sum    	 ; 계산 결과를 sum에 저장

   SWI 255          	 ; 프로그램 종료

addr:  .FILL 0x50000	 ; 데이터가 있는 메모리 주소 지정
sum:   .BLOCK 1     	 ; 합을 저장할 메모리 공간 확보
