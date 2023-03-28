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
  Animation[] anim = new Animation[maxAnim];
  
  float collRadius = w/2.0;
  
  Sprite(String _id)
  {
    this.id = _id;
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
      noStroke();
      fill(color(255,100,100));
      circle(0,0,10);
      noFill();
      stroke(color(100,100,255));
      rect(-reg.x,-reg.y,this.w,this.h);
      noStroke();
      fill(color(0,0,255,100));
      circle(0,0,this.collRadius*2);
    popMatrix();
  }
  
  void check()
  {
    if(this.location.x < 0) this.location.x = width;
    if(this.location.y < 0) this.location.y = height;
    if(this.location.x > width) this.location.x = 0;
    if(this.location.y > height) this.location.y = 0;
    this.velocity.limit(10);
    
  }
  
}
