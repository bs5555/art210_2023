class Scene
{
  
  PImage bg = loadImage("bg.jpg");
  Zombie z = new Zombie("z");
  
  int nObstacle = 5;
  Obstacle[] o = new Obstacle[nObstacle];
  
  int nCloud = 6;
  Cloud[] cc = new Cloud[nCloud];
  
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
    for(int i = 0; i < this.nCloud; i = i + 1)
    {
      this.cc[i]=new Cloud("cc"+i);
      this.cc[i].location.x = i *1000;
    }
    for(int i = 0; i < this.nObstacle; i = i + 1)
    {
      this.o[i]=new Obstacle("o"+i);
    }
    bg.resize(width,height);
  }
  
  void display()
  {
    image(bg,0,0);
    for(int i = 0; i < this.nGround; i = i + 1)
    {
      ground[i].display();
    }
    z.display();
    for(int i = 0; i < this.nCloud; i = i + 1)
    {
      cc[i].display();
    } 
    for(int i = 0; i < this.nObstacle; i = i + 1)
    {
      o[i].display();
    }  
  }
  
  void update()
  {
    for(int i = 0; i < this.nGround; i = i + 1)
    {
      ground[i].update();
    }
    z.update();
    for(int i = 0; i < this.nCloud; i = i + 1)
    {
      cc[i].update();
    } 
    for(int i = 0; i < this.nObstacle; i = i + 1)
    {
      o[i].update();
    } 
  }
  
  void check()
  {
    for(int i = 0; i < nGround; i = i + 1)
    {
      ground[i].check();
    }
    z.check();
    for(int i = 0; i < this.nCloud; i = i + 1)
    {
      cc[i].check();
    }  
    for(int i = 0; i < this.nObstacle; i = i + 1)
    {
      o[i].check();
    } 
  }
}
