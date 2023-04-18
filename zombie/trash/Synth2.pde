class Synth2
{  
  PApplet app;
  SqrOsc me;
  float soundLevel = 0.001;
  float frequency = 60;
  
  Env env;
  float attackTime = 0.001;
  float sustainTime = 0.004;
  float sustainLevel = 0.3;
  float releaseTime = 1.4;
  
  Ani aniFreq; 
  //Ani aniLevel;
  AniSequence Level;
 
  Synth2(PApplet _app)
  {
    this.app = _app;
    this.me= new SqrOsc(this.app);
    this.env = new Env(this.app);
    this.aniFreq = new Ani(this, 5, "frequency", 1000, Ani.BOUNCE_IN_OUT, "onStart:start, onEnd:stop");
    Level = new AniSequence(this.app);
    Level.beginSequence();
      Level.add(Ani.to(this, 1, "soundLevel", 1));
      Level.add(Ani.to(this, 3, "soundLevel", 1));
      Level.add(Ani.to(this, 1, "soundLevel", 0.1));
    Level.endSequence();
    this.me.play();
    
  }
  
  void start()
  {
    println("start");
    this.me.play();
  }
  
  void stop()
  {
    println("stop");
    this.me.stop();
  }
  
  
  void hit()
  {
    this.Level.start();
    this.env.play(this.me, this.attackTime, this.sustainTime, this.sustainLevel, this.releaseTime); 
  }
  
  void update()
   {
     //this.soundLevel = mouseX/(float)width;
   }
   
   void display()
   {
     this.me.amp(this.soundLevel);
     this.me.freq(this.frequency);
     //println(this.soundLevel);
     
   }
  
  
}
