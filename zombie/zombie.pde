import processing.sound.*;
import de.looksgood.ani.*;

Bob s;
int nSnake = 13;
Snake[] z = new Snake[nSnake];
boolean test = false;
SoundSprite m;
Synth boing;


void setup()
{
  size(1200,800);
  //fullScreen();
  Ani.init(this);
  
  m = new SoundSprite(this,"music.wav");
  m.loop();
  m.fadeIn();
  
  boing = new Synth(this,1);
  
  
  
  
  s = new Bob("test");
  for(int i =0; i < nSnake; i =  i + 1)
  {
    z[i] = new Snake("snake"+i);
  } 
  
  
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
  boing.display();
  boing.update();

}

void keyPressed()
{
  s.acceleration.x = s.acceleration.x * (-1.0);
  s.velocity.x = s.acceleration.x * (-1.0);
}

void mouseClicked()
{
   //boing.frequency = random(60,6000);
   boing.hit();
}
