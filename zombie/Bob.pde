class Bob extends Sprite
{
  float maxSpeed = 5;
  
  Bob(String id)
  {
    super(id);
    this.acceleration = new PVector(0.05,0);
    this.registerAnimation(new Animation("zombie","svg"));
    this.registerAnimation(new Animation("zombie_reverse","svg"));
    this.scale = 0.4;
    this.h = 120;
    this.location.y = height-this.h-100;
  }
  
  void check()
  {
    Collision coll = new Collision(this,true);
    int res = coll.box2circle(100,100,width-200,height-200,false);
    if(res == Collision.RIGHT || res == Collision.LEFT)
    {
      this.acceleration.x = this.acceleration.x * (-1.0);
      this.velocity.x = this.velocity.x * (-1.0);
    }
    this.velocity.limit(this.maxSpeed);
    if(this.velocity.x < 0)
    {
      this.currentAnim = 1;
    }
    else
    {
      this.currentAnim = 0;
    }
    
  }
}
