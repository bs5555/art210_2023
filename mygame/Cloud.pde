class Cloud extends Sprite
{
  PGraphics pg;        //grahics bufer of cloud layer
  int h = height/3;  //height of cloud layer
  int nGen = 3;        // complexity of clouds
   
  Cloud(String _id)
  {
    super(_id);
    this.createCloud();
    this.collRadius = 0;
    this.w=1000;
    this.h=500;
    this.reg.x = 0;
    this.reg.y = 0;
    this.location.y = 0;
  }
  
  void createCloud()
  {
    this.pg = createGraphics(1000, h);
    this.pg.beginDraw();
    this.pg.noStroke();
    this.pg.fill(color(255,255,255,20));
    this.cloudGen(random(100,800),random(0,this.h-100),random(200,300), this.nGen);
    this.cloudGen(random(100,800),random(0,this.h-100),random(200,300), this.nGen);
    this.pg.endDraw();
    this.velocity.x = -random(0.1,0.5);
  }
  
  void cloudGen(float x,float y,float rad, int gen)
  {
    if(gen > 0)
    {
      if(x  > (rad/2) && x < 1000-(rad/2) && y < this.h-(rad/2)) 
      {
        this.pg.circle(x,y,rad);
      }
      int n = floor(random(2,4));
      for(int i = 0; i < n; i = i + 1)
      {
        float nx = x + random(rad*1.5)-random(rad);
        float ny = y + random(rad/4.0)-random(rad/4.0);
        rad = rad*0.8;
        this.cloudGen(nx,ny,rad, gen-1);
      }    
    }
  }
  
  void display()
  {
    pushMatrix();
      translate(this.location.x,this.location.y);
      pushMatrix();
        scale(this.scale);
        translate(this.translation.x,this.translation.y);
        image(this.pg,0,0);
      popMatrix(); 
      super.testDisplay();   
    popMatrix();
  }
  
  void check()
  {
    if(this.location.x < -this.w)
    {
      this.location.x = this.location.x = width+random(500);
      this.createCloud();
    }  
  }
  
  
}
