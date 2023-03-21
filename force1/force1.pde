int nMover = 10;
Mover[] m = new Mover[nMover];

void setup()
{
  size(1200,900); // screen size
  //fullScreen();
  for(int i = 0; i < nMover; i = i + 1)
  {
    m[i] = new Mover(random(10,width),random(10,height));
  }  
}

void draw()
{
  noStroke(); //get rid of countour lines
  fill(0,0,0,10); //paint it black
  rect(0,0,width,height);
  fill(255); //paint it white
  PVector wind = new PVector(0.01,0);
  PVector gravitation = new PVector(0,0.1);
  for(int i = 0; i < nMover; i = i + 1)
  {
    m[i].display();
    m[i].applyForce(gravitation);
    m[i].applyForce(wind);
    m[i].update();
    m[i].check();
  }  
}
