class planet
{
  float speed = 1.0;
  float angle = 0.0;
  float dist = 100.0;
  float size = 10.0;
  color col = color(255,255,255);
  int nMoons = 0;
  int gen = 2;
  ArrayList<planet> moons = new ArrayList<planet>();
  
  planet(int _gen)
  {
    this.gen = _gen;
    this.speed = random(-1,1);
    this.dist = random(20,300);
    if(this.gen > 0)
    {
      this.nMoons = 4;//floor(random(4));
      for(int i=0; i<this.nMoons; i = i + 1)
      {
        planet aMoon = new planet(_gen - 1);
        aMoon.col = this.col;
        aMoon.size=(aMoon.gen+1)*10;
        this.moons.add(aMoon);
      }
    } 
    else
    {
      this.nMoons = 0;
    }
    this.col =color(random(0,255),random(0,255),random(0,255));
  }
  
  void update()
  {
    this.angle = this.angle + this.speed;
  }
  
  void draw()
  {
   pushMatrix();
    rotate(radians(this.angle));
    translate(0,this.dist);
    fill(this.col); //paint it white
    circle(0,0,this.size); //drawing the circle
    for(int i=0; i<this.nMoons; i = i + 1)
    {
      planet aMoon = this.moons.get(i);
      aMoon.update();
      aMoon.draw();
    } 
   popMatrix(); 
  }
}
