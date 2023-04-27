class Zombie extends Sprite
{
  float groundLevel = 0;
  boolean isJump = false;
  
  Zombie(String _id)
  {
    super(_id);
    this.registerAnimation(new Animation("zombie","svg"));
    this.registerAnimation(new Animation("zombie_up","svg"));
    this.registerAnimation(new Animation("zombie_down","svg"));
    this.scale = 0.5;
    this.groundLevel = height-250;
    this.location.y = groundLevel;
    this.location.x = 150;
    this.acceleration.y = 0.08; //gravity
  }
  
  void jump()
  {
    if(!this.isJump)
    {
      this.velocity.y = -6;
      this.isJump = true;
    }  
  }
  
  void display()
  {
    super.display();
    noStroke();
    
    float d = (height-this.location.y)/2.0;
    float shadow_density = lerp(10,110,1.0-((height-this.location.y)/height));
    fill(0,0,0,shadow_density);
    ;
    ellipse(this.location.x,this.groundLevel+this.h,d,d/3.0);
  }
  
  void check()
  {
    if(this.isJump)
    {
      if(this.velocity.y < 0) this.currentAnim = 1;
      if(this.velocity.y > 0) this.currentAnim = 2;
    }
    else
    {
      this.currentAnim = 0;
    }
    if(this.location.y > this.groundLevel) 
    {
      this.location.y = this.groundLevel;
      this.isJump = false;
    }  
    
    
    
    
  }
}
