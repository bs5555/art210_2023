class Ground extends Sprite
{
  
  float endDistance = 0;
  
  Ground(String _id)
  {
    super(_id);
    this.registerAnimation(new Animation("ground1","svg"));
    this.registerAnimation(new Animation("ground2","svg"));
    this.registerAnimation(new Animation("ground3","svg"));
    this.velocity.x = -5.0;
    this.collRadius = 0;
    this.w=1000;
    this.h=300;
    this.reg.x = 0;
    this.reg.y = 0;
    for(int i = 0; i < this.nAnim; i = i +1)
    {
      this.anim[i].animPos = CORNER;
    }
    this.currentAnim = floor(random(0,3));
  }
  
  void check()
  {
    if(this.location.x < -this.w)
    {
      float diff = this.location.x + this.w;
      this.location.x = this.endDistance+diff;
      this.currentAnim = floor(random(0,3));
    }  
  }
}
