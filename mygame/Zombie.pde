class Zombie extends Sprite
{
  float groundLevel = 0;
  String state = "run";
  float jumpSpeed=2.0;
  
  Zombie(String _id)
  {
    super(_id);
    this.registerAnimation(new Animation("zombie","svg"));
    this.registerAnimation(new Animation("zombie_up","svg"));
    this.registerAnimation(new Animation("zombie_down","svg"));
    this.registerAnimation(new Animation("zombie_dead","svg"));
    this.scale = 0.5;
    this.groundLevel = height-250;
    this.location.y = groundLevel;
    this.location.x = 150;
    this.acceleration.y = 0.05; //gravity
  }
  
  void startJump()
  {
    if(this.state=="run")
    {
      this.state = "collect";
    }  
  }
  
  void jump()
  {
    this.state = "jump";
    this.velocity.y = -jumpSpeed;
    this.location.y = this.location.y - 0.1;
  }
  
  void display()
  {
    super.display();
    noStroke();
    
    float d = (height-this.location.y)/2.0;
    float shadow_density = lerp(10,110,1.0-((height-this.location.y)/height));
    fill(0,0,0,shadow_density);
    ellipse(this.location.x,this.groundLevel+this.h,d,d/3.0);
  }
  
  void check()
  {
    //println(this.jumpSpeed);
    if(this.state=="collect")
    {
      this.jumpSpeed = this.jumpSpeed+0.1;
      if(this.jumpSpeed > 6.0) this.jumpSpeed=6.0;
    }
    if(this.state=="jump")
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
      if(this.state != "collect") 
      {
        this.state = "run";
        this.jumpSpeed = 2.0;
      } 
    }  
    
    
    
    
  }
}
