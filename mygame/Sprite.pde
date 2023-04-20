class Sprite
{
  String id = "";
  PVector location = new PVector(width/2,height/2);
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  
  float w = 100;
  float h = 100;
  PVector reg = new PVector(w/2.0,h/2.0);
  
  int maxAnim = 10;
  int currentAnim = 0;
  int nAnim = 0;
  Animation[] anim = new Animation[maxAnim];
  float scale = 1.0;
  float rotation = 0.0;
  PVector translation = new PVector(0,0);
  
  float collRadius = w/2.0;
  PVector collBox = new PVector(w,h);
  
  Sprite(String _id)
  {
    this.id = _id;
  }
  
  void registerAnimation(Animation _anim)
  {
    if(this.nAnim < this.maxAnim)
    {
      this.anim[this.nAnim]=_anim;
      this.nAnim = this.nAnim + 1;
    }
    else
    {
      println("Animation number overflow");
    }
  }
  
  void update()
  {
    this.velocity.add(this.acceleration);
    this.location.add(this.velocity);
  }
  
  void display()
  {
    pushMatrix();
      translate(this.location.x,this.location.y);
      pushMatrix();
        scale(this.scale);
        translate(this.translation.x,this.translation.y);
        rotate(radians(this.rotation));
        this.anim[this.currentAnim].display();
      popMatrix(); 
      testDisplay();   
    popMatrix();
  }
  
  void testDisplay()
  {
    if(test)
    {
      noStroke();
      fill(color(255,100,100));
      circle(0,0,10);
      noFill();
      stroke(color(100,100,255));
      rect(-reg.x,-reg.y,this.w,this.h);
      noStroke();
      fill(color(0,0,255,100));
      circle(0,0,this.collRadius*2);
    }  
  }
  
  
  void check()
  {
    
    /*Collision coll = new Collision(this,true);
    int res = coll.box2circle(100,100,width-200,height-200,false);
    //if(res == Collision.RIGHT) this.location.x = 0;
    
    if(res == Collision.RIGHT || res == Collision.LEFT)
    {
      this.acceleration.x = this.acceleration.x * (-1.0);
      this.velocity.x = this.velocity.x * (-1.0);
    }
    
    if(coll.circle2circle(z) == Collision.IN)
    {
      println("Gotcha");
    }
    else
    {
      println("Catch me");
    }
    
    if(this.velocity.x < 0)
    {
      this.currentAnim = 1;
    }
    else
    {
      this.currentAnim = 0;
    }
    this.velocity.limit(3);*/
    
  }
  
  
  
}
