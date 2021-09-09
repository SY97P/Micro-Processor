   .ORIGIN 0x2000
   LOAD R1, value  	 ; 메모리 value 부분의 값을 R1에 읽어들임
   LSL R2, R1, 3    	; R2 ← R1 x 8 (3비트 왼쪽으로 이동)
   LSL R3, R1, 1    	; R3 ← R1 x 2 (1비트 왼쪽으로 이동)
   ADD R1, R2, R3   	; R1 ← (R1 x 8) + (R1 x 2) = R1 x 10
   STORE R1, result	 ; 계산 결과를 remain 부분에 저장
halt: BR nzp halt   	; 제자리에서 무한 루프
value: .FILL 123456	 ; 주어진 숫자
result: .BLOCK 1   	 ; 결과를 저장하기 위한 메모리 영역


