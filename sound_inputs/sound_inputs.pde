import processing.sound.*;

Amplitude amp;
int samples =  100;
Waveform waveform;
AudioIn in;
SoundFile in2;
WhiteNoise in3;
TriOsc in4;

void setup() {
  size(1200, 900);
  background(255);

  //in2 = new SoundFile(this, "x.mp3"); 
  //in2.play();
  
  //in3 = new WhiteNoise(this);
  //in3.play();
  
  in4 = new TriOsc(this);
  in4.play();
    
  // Create an Input stream which is routed into the Amplitude analyzer
  amp = new Amplitude(this);
  waveform = new Waveform(this, samples);
  //in = new AudioIn(this, 0);
  //in.start();
  amp.input(in4);
  waveform.input(in4);
}      

void draw() {
  
  in4.amp((mouseY+0.0001)/height);
  in4.freq(mouseX);
  
  background(100);
  noStroke();
  fill(255,200,200);
  circle(width/2,height/2,(amp.analyze()*500)+50);
  
   waveform.analyze();
  strokeWeight(1);
  stroke(0,150,255);
  noFill();
  beginShape();
  for(int i = 0; i < samples; i++)
  {
    vertex(
      map(i, 0, samples, 0, width),
      map(waveform.data[i], -1, 1, 0, height)
    );
  }
  endShape();
}
