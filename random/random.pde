int nRect = 80;

void setup()
{
  size(800,800);
}

void draw()
{
float d = width/nRect;
  noStroke();
  
  for(int y = 0; y < nRect; y = y + 1)
  {
    for(int x = 0; x < nRect; x = x + 1)
    {
      if(random(0,1) < x/(nRect*2.0))
      {
        fill(0);
      }
      else
      {
        fill(255);
      }
      rect(x*d,y*d,d,d);
    }
  }  
}
