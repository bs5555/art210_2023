/*
A white circle moves from the left edge of the screen 
to the right edge of the screen. When it reaches the 
right edge, goees back to the left one.
*/
float _cx = 0.0; //this is a place for the circle's position -- variable
float _cd = 10;

void setup()
{
  size(800,600); // screen size
}

void draw()
{
  noStroke(); //get rid of countour lines
  fill(0,0,0,10); //paint it black
  rect(0,0,width,height);
  fill(255); //paint it white
  circle(_cx,height/2,40); //drawing the circle
  _cx = _cx + _cd;
  
  //It is conditional execution
  if(_cx > width || _cx < 0)  //if the current position of the circle is...
  {
    _cd = _cd * (-1); //turn it to the opposite
  }
}
