/*
A white circle moves from the left edge of the screen 
to the right edge of the screen. When it reaches the 
right edge, goees back to the left one.
*/
float _cx = 0.01; //this is a place for the circle's position -- variable

void setup()
{
  size(800,600); // screen size
}

void draw()
{
  noStroke(); //get rid of countour lines
  fill(0); //paint it black
  rect(0,0,width,height);
  fill(255); //paint it white
  circle(_cx,height/2,40); //drawing the circle
  
  //It is conditional execution
  if(_cx > width)  //if the curren position of the circle is...
  {
    _cx = 0.01;  //smaller equal the screen with set it to zero
  }
  else
  {
    _cx = _cx * 1.1;  //else enrease it with one
  }
}
