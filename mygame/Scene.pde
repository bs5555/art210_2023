class Scene
{
  
  Zombie z = new Zombie("z"); 
  
  int nGround = 0;
  int maxGround = 1;
  Ground[] ground = new Ground[10];
  Animation[] groundAnim = new Animation[3]; 
  
  
  Scene()
  {
    this.maxGround = ceil(width/1000.0)+2;
    for(int i = 0; i < this.maxGround; i = i + 1)
    {
      this.ground[i]=new Ground("ground"+i);
      this.ground[i].location.x = i *1000;
      this.ground[i].location.y = height-300;
      this.ground[i].endDistance = (this.maxGround-2)*1000;
      this.nGround = i;
    } 
  }
  
  void display()
  {
    background(255);
    for(int i = 0; i < this.nGround; i = i + 1)
    {
      ground[i].display();
    }
    z.display();
  }
  
  void update()
  {
    for(int i = 0; i < this.nGround; i = i + 1)
    {
      ground[i].update();
    }
    z.update();
  }
  
  void check()
  {
    for(int i = 0; i < nGround; i = i + 1)
    {
      ground[i].check();
    }
    z.check();
  }
}
