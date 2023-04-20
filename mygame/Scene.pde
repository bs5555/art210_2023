class Scene
{
  int nGround = 0;
  Ground[] ground = new Ground[10];
  
  Scene()
  {
    ground[nGround]=new Ground("ground1");
    nGround =  nGround+1;
  }
  
  void display()
  {
    background(255);
    for(int i = 0; i < nGround; i = i + 1)
    {
      ground[i].display();
    }
  }
  
  void update()
  {
    for(int i = 0; i < nGround; i = i + 1)
    {
      ground[i].update();
    }
  }
  
  void check()
  {
    for(int i = 0; i < nGround; i = i + 1)
    {
      ground[i].check();
    }
  }
}
