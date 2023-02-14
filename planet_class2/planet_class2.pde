planet sun = new planet();
planet mercury = new planet();
planet venus = new planet();
planet earth = new planet();
planet mars = new planet();
planet jupiter = new planet();
planet saturn = new planet();
planet uranus = new planet();
planet neptune = new planet();
planet pluto = new planet();
float zoom = 1.0;

void setup()
{
  fullScreen();
  //size(1200,800);
  sun.dist = 0;
  sun.size = 40;
  sun.col = color(255,255,0);
  mercury.dist = 57.9;
  mercury.speed = 4.74;
  venus.dist = 108.2;
  venus.speed = 3.5;
  earth.speed = 2.98;
  earth.dist = 149.6;
  mars.speed = 2.41;
  mars.dist = 228.0;
  jupiter.speed = 1.31;
  jupiter.dist = 778.5;
  saturn.speed = 0.97;
  saturn.dist = 1432.0;
  uranus.speed = 0.68;
  uranus.dist = 2867.0;
  neptune.speed = 0.54;
  neptune.dist = 4515.0;
  pluto.speed = 0.47;
  pluto.dist = 5906.4;

}

void draw()
{
  noStroke(); //get rid of countour lines
  fill(0,0,0,5); //paint it black
  rect(0,0,width,height);
  translate(width/2,height/2);
  scale(zoom);
  
  sun.draw();
  mercury.draw();
  venus.draw();
  earth.draw();
  mars.draw();
  jupiter.draw();
  saturn.draw();
  uranus.draw();
  neptune.draw();
  pluto.draw();
  sun.update();
  mercury.update();
  venus.update();
  earth.update();
  mars.update();
  jupiter.update();
  saturn.update();
  uranus.update();
  neptune.update();
  pluto.update();  
}

void mouseWheel(MouseEvent event) 
{
  float e = event.getCount();
  zoom = zoom + (e/10.0);
}
