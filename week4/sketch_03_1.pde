void setup() 

{

  size(640, 360);

}



void draw() 

{

  background(102);

  pushMatrix(); //start point

    translate(width*0.5, height*0.5); //translate

    //rotate(frameCount / 200.0);

    polygon(0, 0, 82, 3);  // Triangle

  popMatrix(); //end point

}





void polygon(float x, float y, float radius, int npoints)

{

  float angle = TWO_PI / npoints;

  beginShape();  //user start

  for (float a = 0; a < TWO_PI; a += angle) //angle control

  {

    float sx = x + cos(a) * radius;

    float sy = y + sin(a) * radius;

    vertex(sx, sy);

  }

  endShape(CLOSE);  //user end

}