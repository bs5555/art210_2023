class planet
{
  float speed = 1.0;
  float angle = 0.0;
  float dist = 100.0;
  float size = 10.0;
  color col = color(255,255,255);
  
  planet()
  {
    this.speed = random(-1,1);
  }
  
  void update()
  {
    this.angle = this.angle + this.speed;
  }
  
  void draw()
  {
   pushMatrix();
    rotate(radians(this.angle));
    translate(0,this.dist);
    fill(this.col); //paint it white
    circle(0,0,this.size); //drawing the circle
   popMatrix(); 
  }
}
