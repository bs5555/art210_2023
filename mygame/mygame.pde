import processing.sound.*;
import de.looksgood.ani.*;

boolean test = false;
Scene game;

void setup()
{
  size(2000,800,P3D);
  //fullScreen(P3D);
  game = new Scene();
}

void draw()
{
  
  game.update();
  game.check();
  game.display();
}

void keyPressed()
{
  game.z.startJump();
}

void keyReleased()
{
  game.z.jump();
}
