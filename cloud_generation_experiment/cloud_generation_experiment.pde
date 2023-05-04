PGraphics pg;
int nGen = 3;

void setup()
{
  size(1000,500);
  createCloud();
}

void draw()
{
  background(113,210,247);
  image(pg,0,0);
}

void createCloud()
{
  pg =createGraphics(width,height);
  pg.beginDraw();
  pg.noStroke();
  pg.fill(color(255,255,255,100));
  cloudGen(random(100,800),random(0,300),random(200,300), nGen);
  cloudGen(random(100,800),random(0,300),random(200,300), nGen);
  pg.endDraw();
}

void cloudGen(float x,float y,float rad, int gen)
{
  if(gen > 0)
  {
    if(x  > (rad/2) && x < width-(rad/2) && y < height-(rad/2)) 
    {
      pg.circle(x,y,rad);
    }
    int n = floor(random(2,4));
    for(int i = 0; i < n; i = i + 1)
    {
      float nx = x + random(rad*1.5)-random(rad);
      float ny = y + random(rad/4.0)-random(rad/4.0);
      rad = rad*0.8;
      cloudGen(nx,ny,rad, gen-1);
    }  
    
  }
}

void mousePressed()
{
  createCloud();
}
