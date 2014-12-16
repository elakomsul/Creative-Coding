import processing.video.*;

import ddf.minim.*;
import ddf.minim.signals.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;

Minim minim;
AudioPlayer sou;

ArrayList<sbClip> theclips;

String PATH = "SpringBreakers.mov";
Movie mov;

void setup() {
  size(800, 400);
  frameRate(25);
  mov = new Movie(this, PATH);
  mov.volume(0);

  minim = new Minim(this);
  sou = minim.loadFile("Florida Kilos.mp3");
  
  loadclips();
}

void movieEvent(Movie m) {
  m.read();
}




void draw() {
  image(mov, 0, 0, width, height);
}

void keyReleased()
{
  sou.loop();
  mov.play();
  mov.jump(0.);
}

