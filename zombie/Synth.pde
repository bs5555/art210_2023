class Synth
{  
  PApplet app;
  SqrOsc sqr;
  SawOsc saw;
  SinOsc sin;
  SoundObject osc; 
  
  float soundLevel = 0;
  float frequency = 100;
  
  Env env;
  float attackTime = 0.001;
  float sustainTime = 0.004;
  float sustainLevel = 0.3;
  float releaseTime = 1.4;
  
 
 
  Synth(PApplet _app,int _type)
  {
    this.app = _app;
    sqr = new SqrOsc(this.app);
    sin = new SinOsc(this.app);
    saw = new SawOsc(this.app);
    //sqr.freq(100);
    if(_type==0) this.osc = sqr;
    if(_type==1) this.osc = sin;
    if(_type==2) this.osc = saw;
    this.env = new Env(this.app);
  }
  
  
  
  void hit()
  {
    this.env.play(this.osc, this.attackTime, this.sustainTime, this.sustainLevel, this.releaseTime); 
  }
  
  void update()
   {
     //this.frequency = (mouseX/(float)width)*500;
   }
   
   void display()
   {
     //this.me.amp(this.soundLevel);
     this.sqr.freq(this.frequency);
     this.sin.freq(this.frequency);
     this.saw.freq(this.frequency);
   }
  
}
