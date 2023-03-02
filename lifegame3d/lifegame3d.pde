import peasy.*;
PeasyCam cam;

int cellSize = 5;
int maxX = 50;
int maxY = 50;
int maxZ = 50;
Cell[][][] cells = new Cell[maxX][maxY][maxZ];

int gameState = 0; //state of the game 0 = creating world 1 = running it

void setup()
{
  size(1200,900,P3D);
  cam = new PeasyCam(this, 500);
  //fullScreen();
  for(int y = 0; y < maxY; y = y + 1)
  {
    for(int x = 0; x < maxX; x = x + 1)
    {
      for(int z = 0; z < maxZ; z = z + 1)
      {
        cells[x][y][z] =  new Cell(x,y,z,cellSize);
        if(random(0,1) > 0.5) cells[x][y][z].isLive = true;
      }  
    }
  }  
}

void draw()
{
  background(0);
  lights();
  for(int y = 0; y < maxY; y = y + 1)
  {
    for(int x = 0; x < maxX; x = x + 1)
    {
      for(int z = 0; z < maxZ; z = z + 1)
      {
        cells[x][y][z].display();
        cells[x][y][z].check();
      }  
    } 
  }
  if(gameState == 1)
  {
    for(int y = 0; y < maxY; y = y + 1)
    {
      for(int x = 0; x < maxX; x = x + 1)
      {
        for(int z = 0; z < maxZ; z = z + 1)
        {
          cells[x][y][z].isLive = cells[x][y][z].nextLive;
        }  
      }
    }
  }  
}


void keyPressed()
{
  if(gameState == 1) 
  {
    gameState = 0;
  }
  else
  {
    gameState = 1;
  }
}
