void setup()
{
  size(800,800);
  float d = width/6;
  noStroke();
  
  for(int y = 0; y < 8; y = y + 1)
  {
    for(int x = 0; x < 8; x = x + 1)
    {
      if((x+y) % 2 > 0)
      {
        fill(0);
      }
      else
      {
        fill(255); 
      }
      rect(x*d,y*d,d,d);
      println("x = "+x+" y = "+y+ " x+y= "+(x+y));
    }
  }  
}
