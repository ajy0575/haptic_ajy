1 int cnt1 = 0; 
2 void setup() { 
3   Serial.begin(9600); //serial statrt
4 } 
5 
 
6 // 1초마다 PC로 숫자를 보내는 예제 
7 void loop() { 
8   char buf[255]; 
9   sprintf(buf, "%d", cnt1); 
10   // "%d" 를 "%c" 로 바꾸면 어떻게 될까요? 
11    
12   Serial.println(buf); 
13   cnt1++; 
14    
15   delay(1000); 
16 } 

