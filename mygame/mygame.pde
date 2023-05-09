import processing.sound.*;
import de.looksgood.ani.*;

boolean test = false;
int gameState = 0;
Scene game;
EndScene end;
PFont font;


void setup()
{
  size(2000,800,P3D);
  //fullScreen(P3D);
  font = createFont("frijole.ttf",150);
  game = new Scene();
  end = new EndScene();
}

void draw()
{
  if(gameState==0)
  {
    game.update();
    game.check();
    game.display();
  } 
  if(gameState==1)
  {
    end.update();
    end.check();
    end.display();
  }  
}

void keyPressed()
{
  if(gameState == 0) game.z.startJump();
}

void keyReleased()
{
  if(gameState == 0) game.z.jump();
}
