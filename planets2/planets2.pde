int _nPlanets = 1000;
float[] _speed = new float[_nPlanets];
float[] _angle = new float[_nPlanets];
float[] _dist = new float[_nPlanets];
float[] _size = new float[_nPlanets];
color[] _color = new color[_nPlanets];
boolean[] _isMoon = new boolean[_nPlanets];

void setup()
{
  //size(1200,800); // screen size
  fullScreen(P3D);
  for(int i = 0; i < _nPlanets; i = i + 1)
  {
    _speed[i]=random(-0.18,0.18);
    _angle[i]=0.0;
    _dist[i]=random(100,400);
    _size[i]=random(20,50);
    _color[i]=color(random(255),random(255),random(255));
    _isMoon[i]=random(-1,1) > 0;
  }
}

void draw()
{
  noStroke(); //get rid of countour lines
  fill(0,0,0,5); //paint it black
  rect(0,0,width,height);
  
  translate(width/2,height/2);
  scale(0.1); 
  for(int i = 0; i < _nPlanets; i = i + 1)
  {
    drawPlanet(_angle[i], _dist[i], _size[i], _color[i], _isMoon[i]);
   _angle[i] = _angle[i] + _speed[i]; 
  }
}

void drawPlanet(float angle, float distance, float size, color c, boolean isMoon)
{
   if(!isMoon) pushMatrix();
    rotate(radians(angle));
    translate(0,distance);
    fill(c); //paint it white
    circle(0,0,size); //drawing the circle
   if(!isMoon) popMatrix(); 
}
