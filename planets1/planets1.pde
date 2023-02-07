int _nPlanets = 100;
float[] _speed = new float[_nPlanets];
float[] _angle = new float[_nPlanets];
float[] _dist = new float[_nPlanets];




void setup()
{
  size(1200,800); // screen size
  for(int i = 0; i < _nPlanets; i = i + 1)
  {
    _speed[i]=random(-1.8,1.8);
    _angle[i]=0.0;
    _dist[i]=random(100,400);
  }
}

void draw()
{
  noStroke(); //get rid of countour lines
  fill(0,0,0,10); //paint it black
  rect(0,0,width,height);
  
  translate(width/2,height/2);
 
  
  for(int i = 0; i < _nPlanets; i = i + 1)
  {
    drawPlanet(_angle[i], _dist[i]);
   _angle[i] = _angle[i] + _speed[i]; 
  }
}

void drawPlanet(float angle, float distance)
{
   pushMatrix();
    rotate(radians(angle));
    translate(0,distance);
    fill(255); //paint it white
    circle(0,0,40); //drawing the circle
   popMatrix(); 
}
