class Obstacle extends Sprite
{
  
   float angle = 0;
   Obstacle(String _id)
   {
     super(_id);
     this.registerAnimation(new Animation("saw","svg"));
     this.scale = 0.5;
     this.velocity.x = random(-5.0,-10.0);
     this.location.y = height-300;
   }
   
   void update()
   {
     super.update();
     this.angle = this.angle + 5;
     this.rotation = (sin(radians(this.angle))*16.0)-90.0;
     if(angle==360) this.angle = 0;
   }
   
  void check()
  {
    if(this.location.x < -this.w) 
    {
      this.location.x = width + random(width);
      this.velocity.x = random(-5.0,-10.0);
      
    }  
  } 
}
