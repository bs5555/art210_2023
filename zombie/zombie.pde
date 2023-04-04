Sprite s;
Sprite z;
void setup()
{
  size(1200,800);
  s = new Sprite("test");
  s.acceleration = new PVector(0.01,0);
  s.registerAnimation(new Animation("zombie","svg"));
  s.registerAnimation(new Animation("zombie_reverse","svg"));
  s.scale = 0.4;
  s.h = 120;
  
  z = new Sprite("snake");
  z.acceleration = new PVector(0.07,0);
  z.registerAnimation(new Animation("snake","png"));
  z.registerAnimation(new Animation("snake","png"));
}

void draw()
{
  background(255);
  fill(230);
  rect(100,100,width-200,height-200);
  s.display();
  s.update();
  s.check();
  z.display();
  z.update();
  z.check();
}

void mouseClicked()
{
  s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.acceleration.x * (-1.0);
  println(s.acceleration);
}
