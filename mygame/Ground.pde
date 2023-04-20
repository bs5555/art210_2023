class Ground extends Sprite
{
  Ground(String _id)
  {
    super(_id);
    this.registerAnimation(new Animation("ground1","svg"));
    this.velocity.x = -5.0;
    this.w=1000;
    this.h=300;
    this.reg.x=this.w/2.0; 
    this.reg.y=this.h/2.0;
  }
  
  void check()
  {
    if(this.location.x < 0) this.location.x = width;
  }
}
