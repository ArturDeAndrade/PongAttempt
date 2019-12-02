class Display {
  Ball ball;
  Paddle paddle1, paddle2;
  int unit = 10;

  Display() {
    ball = new Ball();
    paddle1 = new Paddle(true);
    paddle2 = new Paddle(false);
  }

  void show() {
    gameScreen();
    if (ball.score1 < 10 && ball.score2 < 10) {
      ball.show();
      paddle1.show();
      paddle2.show();
    } else {
      fill(255);
      textFont(font, 100);
      textAlign(CENTER, CENTER);
      if (ball.score1 >= 10) {
        text("PLAYER ONE WINS!", 0.5*width, 0.5*height);
      } else {
        text("PLAYER TWO WINS!", 0.5*width, 0.5*height);
      }
    }
    update();
  }

  void update() {
    if(
    ball.position.x < paddle1.position.x + 0.5*paddle1.dimensions.x && 
    ball.position.x > paddle1.position.x - 0.5*paddle1.dimensions.x && 
    ball.position.y > paddle1.position.y - 0.5*paddle1.dimensions.y && 
    ball.position.y < paddle1.position.y + 0.5*paddle1.dimensions.y){
      PongPaddle.play();
      ball.speed.x *= -1;
    }
    if(
    ball.position.x < paddle2.position.x + 0.5*paddle2.dimensions.x && 
    ball.position.x > paddle2.position.x - 0.5*paddle2.dimensions.x && 
    ball.position.y > paddle2.position.y - 0.5*paddle2.dimensions.y && 
    ball.position.y < paddle2.position.y + 0.5*paddle2.dimensions.y){
      PongPaddle.play();
      ball.speed.x *= -1;
    }
    ball.update();
    paddle1.update();
    paddle2.update();
  }

void gameScreen() {
  //Middle Line
  int y = 2*unit;
  boolean white = true;
  while (y < height) {
    if (white) {
      fill(255);
      rectMode(CENTER);
      rect(0.5*width, y, unit, 2*unit);
    }      
    y += 2*unit;
    white = !white;
  }

  //Score Board
  fill(255);
  textFont(font, 64);
  textAlign(LEFT, TOP);
  text(ball.score1, 0.25*width, 0);
  textAlign(RIGHT, TOP);
  text(ball.score2, 0.75*width, 0);
}
}
