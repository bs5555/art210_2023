class Mover
{
  PVector location = new PVector(0,0);
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  float topspeed = random(1,5);
  float mass = random(10,30);
  
  Mover(float _x, float _y)
  {
    this.location.x = _x;
    this.location.y = _y;
    this.acceleration.x = -0.001;
    this.acceleration.y = 0.01;
  }
  
  void display()
  {
     fill(255); //paint it white
     circle(this.location.x, this.location.y,this.mass); //drawing the circle
  }
  
  void applyForce(PVector force) 
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void update()
  {
    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }
  
  void check()
  {
    if(this.location.x < 0 || this.location.x > width)  this.velocity.x = this.velocity.x * (-1);
    if(this.location.y < 0 || this.location.y > height) this.velocity.y = this.velocity.y * (-1);
    /*if(this.location.x < 0) this.location.x =  width;
    if(this.location.x > width) this.location.x =  0;
    if(this.location.y < 0) this.location.y =  height;
    if(this.location.y > height) this.location.y =  0;*/
  }
}
