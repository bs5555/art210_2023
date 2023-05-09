class Collision
{
  Sprite sprite;
  boolean circle = true;
  
  static final int IN = 0;
  static final int OUT = -1;
  static final int TOP = 1;
  static final int BOTTOM = 10;
  static final int LEFT = 100;
  static final int RIGHT = 1000;
  static final int TOP_LEFT = 101;
  static final int BOTTOM_LEFT = 110;
  static final int TOP_RIGHT = 1001;
  static final int BOTTOM_RIGHT = 1010;
  
 
  Collision(Sprite _sprite, boolean isCircle)
  {
    this.sprite = _sprite;
    this.circle = isCircle;
  }
  
  int box2point(float _x, float _y, float _w,float _h)
  {
    int res = 0;
    if(this.sprite.location.x < _x) res = res + LEFT;
    if(this.sprite.location.y < _y) res = res + TOP;
    if(this.sprite.location.x > _x+_w)  res = res + RIGHT;
    if(this.sprite.location.y > _y+_h) res = res + BOTTOM;
    return(res);
  }
  
  int box2circle(float _x, float _y, float _w,float _h, boolean in)
  {
    int res = 0;
    if(in)
    {
      if(this.sprite.location.x-this.sprite.collRadius < _x) res = res + LEFT;
      if(this.sprite.location.y-this.sprite.collRadius < _y) res = res + TOP;
      if(this.sprite.location.x+this.sprite.collRadius > _x+_w)  res = res + RIGHT;
      if(this.sprite.location.y+this.sprite.collRadius > _y+_h) res = res + BOTTOM;
    }
    else
    {
      if(this.sprite.location.x+this.sprite.collRadius < _x) res = res + LEFT;
      if(this.sprite.location.y+this.sprite.collRadius < _y) res = res + TOP;
      if(this.sprite.location.x-this.sprite.collRadius > _x+_w)  res = res + RIGHT;
      if(this.sprite.location.y-this.sprite.collRadius > _y+_h) res = res + BOTTOM;
    }
     
    return(res);
  }
  
  int circle2circle(Sprite sprite)
  {
    if(this.sprite.id != sprite.id)
    {
      PVector distance = PVector.sub(this.sprite.location,sprite.location);
      float d = distance.mag();
      float minDistance = (this.sprite.collRadius + sprite.collRadius)/2.0;
      if(d < minDistance) return(IN);
    }  
    return(OUT);
  }
  
  int box2box(float _x, float _y, float _w,float _h)
  {
    return(0); 
  }
  
}
