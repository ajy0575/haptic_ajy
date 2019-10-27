
 Open this file in GitHub Desktop  You must be signed in to make or propose changes  You must be signed in to make or propose changes 


1 import processing.serial.*; 
2 Serial myPort;  
3 float val1; 
4 
 
5 void setup() { 
6    
7   size(800, 600); 
8   // List all the available serial ports 
9   printArray(Serial.list()); 
10    
11   // Open the port you are using at the rate you want: 
12   //myPort = new Serial(this, Serial.list()[0], 9600); 
13   myPort = new Serial(this, Serial.list()[Serial.list().length - 1], 9600); 
14    
15   val1 = 0; 
16 } 
17 
 
18 
 
19 void draw() { 
20   background(255);   
21   fill(0);    
22   int lf = 10;    // Linefeed in ASCII 
23 
 
24   String buf = String.format("%06d, %.0f", frameCount, val1); 
25   text(buf, 20,50); 
26    
27   while (myPort.available() > 0)  
28   { 
29     String str1  = myPort.readStringUntil(lf);//myPort.readString(); 
       //=======================base on lf============================
30      
31     if (str1 != null)  
32     { 
33       val1 = float(str1); 
34     } 
35   } 
36  
 