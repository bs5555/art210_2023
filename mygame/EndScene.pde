class EndScene extends Scene
{
  EndScene()
  {
    super();
  }
  
  void play(Scene sc)
  {
    this.ground=sc.ground;
    this.cc=sc.cc;
    this.o=sc.o;
    this.z.velocity.x=0;
    this.z.velocity.y=0;
    this.z.acceleration.y=-0.1;
    this.z.currentAnim = 3;
    for(int i = 0; i < nGround; i = i + 1)
    {
      ground[i].acceleration.x=0.01;
    }
  }
  
  void display()
  {
    super.display();
    fill(255,200,0);
    textSize(50);
    textFont(font);
    textAlign(CENTER);
    text("GAME OVER",width/2,height/2);
  }
  
  void check()
  {
    for(int i = 0; i < nGround; i = i + 1)
    {
      ground[i].check();
      if(ground[i].velocity.x >=0) 
      {
        ground[i].acceleration.x=0;
        ground[i].velocity.x=0;
      }  
    }
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
