import processing.sound.*;
import de.looksgood.ani.*;

boolean test = true;
Scene game;

void setup()
{
  size(1000,800,P3D);
  //fullScreen(P3D);
  game = new Scene();
}

void draw()
{
  game.check();
  game.update();
  game.display();
}
