import processing.sound.*;
SoundFile PongPaddle, PongScore, PongSide;
int timer;
Display gameWindow;
PFont font;

void setup() {
  size(1000, 600);
  font = createFont("MinecraftFont.ttf", 64);
  PongPaddle = new SoundFile(this, "PongPaddle.wav");
  PongScore = new SoundFile(this, "PongScore.wav");
  PongSide = new SoundFile(this, "PongSide.wav");
  noCursor();

  gameWindow = new Display();
}

void draw() {
  background(0);

  timer = 3 - millis()/1000;
  if (timer == 3 - millis()/1000) {
  }
  if (timer > 0) {
    fill(255);
    textFont(font, 100);
    textAlign(CENTER, CENTER);
    text("GET READY!\n" + timer, 0.5*width, 0.5*height);
  } else {
    gameWindow.show();
  }
}
