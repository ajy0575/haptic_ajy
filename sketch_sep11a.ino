
int sensorPosPin = A2; // input pin for MR sensor
 int inByte;
int rawPos;
int t;
int run =1;

void setup() {

  // put your setup code here, to run once:

  Serial.begin(9600);//9600

  pinMode(sensorPosPin, INPUT); // set MR sensor pin to be an input
t=0;


}



void loop() {

  // put your main code here, to run repeatedly:
  if( Serial.available()>0){
   
   inByte = Serial.read(); 
  }

   if(inByte=='1'){
    calculatePosition();
  Serial.println(rawPos);

  
   }else if(inByte =='2'){
     calculateVirtualPosition();
  Serial.println(rawPos);

  delay(10);
   }
  
  
  
 


}





void calculatePosition()

{

  rawPos = analogRead(sensorPosPin);
  

}



void calculateVirtualPosition(){
 t=t+1;
 rawPos = 512+ 512.0* sin(0.1*t);

}



