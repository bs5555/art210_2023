class Obstacle extends Sprite
{
  
   float angle = 0;
   float wave = 16.0;
   Collision coll;
   Obstacle(String _id)
   {
     super(_id);
     this.registerAnimation(new Animation("saw","svg"));
     this.scale = 0.5;
     this.velocity.x = random(-7.0,-5.0);
     this.location.y = height-random(150,300);
     this.location.x = width + random(width);
     this.wave = random(10,36); 
     this.angle = random(360);
     this.collRadius = this.w/3.0;
     coll=new Collision(this,true);
   }
   
   void update()
   {
     super.update();
     this.angle = this.angle + 5;
     this.rotation = (sin(radians(this.angle))*this.wave)-90.0;
     if(angle==360) this.angle = 0;
     println(this.velocity.x);
   }
   
  void check()
  {
    if(this.location.x < -this.w) 
    {
      this.location.x = width + random(width);
      this.velocity.x = random(-7.0,-5.0);
    }  
    if(this.coll.circle2circle(game.z) == 0)
    {
      gameState = 1;
      end.play(game);
    }
  } 
}
