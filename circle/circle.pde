void setup()
{
  size(800,600);
}

void draw()
{
  noStroke();
  fill(255,255,255,10);
  rect(0,0,width,height);
  fill(255,155,155);
  circle(mouseX,mouseY,100);
}
