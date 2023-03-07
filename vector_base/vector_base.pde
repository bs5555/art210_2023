Mover m = new Mover(0,0);

void setup()
{
  size(800,600); // screen size
  m.velocity.x = random(1,10);
  m.velocity.y = random(1,10);
}

void draw()
{
  noStroke(); //get rid of countour lines
  fill(0,0,0,10); //paint it black
  rect(0,0,width,height);
  fill(255); //paint it white
  m.display();
  m.update();
  m.check();
}
