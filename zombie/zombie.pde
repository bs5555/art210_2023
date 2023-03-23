Animation z;

void setup()
{
  size(800,600);
  z =  new Animation("zombie","svg");
  
}

void draw()
{
  background(255);
  translate(width/2,height/2);
  z.speed = (float)mouseX/width; 
  z.display();
  

}
