import processing.sound.*;
import de.looksgood.ani.*;

TriOsc triOsc;
Env env;

float attackTime = 0.001;
float sustainTime = 0.004;
float sustainLevel = 0.3;
float releaseTime = 1.4;



Bob s;
int nSnake = 13;
Snake[] z = new Snake[nSnake];
boolean test = false;
Sound m;


void setup()
{
  //size(1200,800);
  fullScreen();
  m = new Sound(this,"music.wav");
  Ani.init(this);
  
  
  
  
  s = new Bob("test");
  for(int i =0; i < nSnake; i =  i + 1)
  {
    z[i] = new Snake("snake"+i);
  } 
  
  // Create triangle wave
  triOsc = new TriOsc(this);

  // Create the envelope 
  env  = new Env(this); 
  
}

void draw()
{
  background(255);
  fill(230);
  rect(100,100,width-200,height-200);
  s.display();
  s.update();
  s.check();
  for(int i =0; i < nSnake; i =  i + 1)
  {
    z[i].display();
    z[i].update();
    z[i].check();
  }  
  m.display();
  m.update();

}

void keyPressed()
{
  s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.acceleration.x * (-1.0);
}

void mouseClicked()
{
   if(m.soundLevel == 0)
   {
     m.fadeIn();
   }
   else
   {
     m.fadeOut();
   }
}
