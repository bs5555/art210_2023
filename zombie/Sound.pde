class Sound
{
   PApplet app;
   SoundFile me;
   float soundLevel = 0;
   
   Sound(PApplet _app, String filename)
   {
     this.app=_app;
     this.me = new SoundFile(this.app,filename);
   }
   
   void play()
   {
     this.me.play();
   }
   
   void loop()
   {
     this.me.loop();
   }
   
   void fadeIn()
   {
     Ani.to(this, 5, "soundLevel", 1);
   }
   
   void fadeOut()
   {
     Ani.to(this, 5, "soundLevel", 0);
   }
   
   void update()
   {
     //this.soundLevel = mouseX/(float)width;
   }
   
   void display()
   {
     this.me.amp(this.soundLevel);
   }
}
