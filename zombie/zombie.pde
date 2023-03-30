Animation z;
Sprite s;

void setup()
{
  size(800,600);
  z =  new Animation("zombie","svg");
  s = new Sprite("test");
  s.acceleration = PVector.random2D();
  
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  z.speed = (float)mouseX/width; 
  z.display();
  
  //s.display();
  //s.update();
  //s.check();
  

}
