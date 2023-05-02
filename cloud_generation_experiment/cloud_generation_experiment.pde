PGraphics pg;
int nGen = 5;

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
  nGen = 8;
  pg =createGraphics(width,height);
  pg.beginDraw();
  pg.noStroke();
  pg.fill(color(255,255,255,100));
  float rad = random(200,300);
  float x = random(100,800);
  float y = random(0,300);
  cloudGen(x,y,rad);
  pg.endDraw();
}

void cloudGen(float x,float y,float rad)
{
  if(nGen > 0)
  {
    pg.circle(x,y,rad);
    rad = rad*0.9;
    int n = floor(random(2,4));
    for(int i = 0; i < n; i = i + 1)
    {
      float nx = x + random(rad)-random(rad);
      float ny = y + random(rad/4.0)-random(rad/4.0);
      nGen = nGen - 1;
      cloudGen(nx,ny,rad);
    }  
    
  }
}

void mousePressed()
{
  createCloud();
}
