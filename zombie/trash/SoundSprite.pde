class SoundSprite extends Sound
{
  PVector location = new PVector(width/2,height/2);
  
  SoundSprite(PApplet _app, String filename)
  {
    super(_app,filename);
  }
  
  void display()
  {
     super.display();
     pushMatrix();
       translate(this.location.x,this.location.y);
       fill(255,0,0,200);
       circle(0,0,30);
     popMatrix();
  }
  
  void update()
   {
     //this.soundLevel = mouseX/(float)width;
     PVector d = PVector.sub(this.location,s.location);
     float dist = d.mag();
     this.soundLevel = 1.0-((dist-500.0)/1200.0);
   }
}
