import processing.sound.*;

TriOsc triOsc;
Env env;

float attackTime = 0.001;
float sustainTime = 0.004;
float sustainLevel = 0.3;
float releaseTime = 1.4;

void setup() {
  size(640, 360);
  background(255);
  
  // Create triangle wave
  triOsc = new TriOsc(this);

  // Create the envelope 
  env  = new Env(this); 
 
}      

void draw() {
  triOsc.freq(mouseX);
  sustainLevel = (mouseY+0.0001)/height;
}

void mousePressed() {
  triOsc.play();
  env.play(triOsc, attackTime, sustainTime, sustainLevel, releaseTime);
}
