import processing.sound.*;

Bob s;
int nSnake = 3;
Snake[] z = new Snake[nSnake];
boolean test = true;

void setup()
{
  size(1200,800);
  s = new Bob("test");
  for(int i =0; i < nSnake; i =  i + 1)
  {
    z[i] = new Snake("snake"+i);
  }  
}

void draw()
{
  background(255);
  fill(230);
  rect(100,100,width-200,height-200);
  s.display();
  s.update();
  s.check();
  for(int i =0; i < nSnake; i =  i + 1)
  {
    z[i].display();
    z[i].update();
    z[i].check();
  }  
}

void keyPressed()
{
  s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.acceleration.x * (-1.0);
}

void mouseClicked()
{
  s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.acceleration.x * (-1.0);
  println(s.acceleration);
}
