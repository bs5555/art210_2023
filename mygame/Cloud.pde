class Cloud extends Sprite
{
  PGraphics pg;
  float endDistance = 0;
   
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
    this.pg = createGraphics(1000, 500);
    this.pg.beginDraw();
    this.pg.noStroke();
    
    for(int i =0; i < 16; i = i + 1)
    {
      this.pg.fill(color(255,255,255,random(20,100)));
      this.pg.circle(random(100,800),random(-100,300),random(50,200));
    }
    pg.endDraw();
    this.velocity.x = -random(0.2,0.5);
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
