class Paddle {
  PVector position, dimensions;
  boolean playerOne;

  Paddle(boolean p1) {
    if (p1) {
      position = new PVector(0.05*width, 0.5*height);
      playerOne = true;
    } else {
      position = new PVector(0.95*width, 0.5*height);
      playerOne = false;
    }
    dimensions = new PVector(8, 60);
  }

  void show() {
    fill(255);
    noStroke();
    rectMode(CENTER);
    rect(position.x, position.y, dimensions.x, dimensions.y);
  }

  void move() {
    if (playerOne) {
      if (keyPressed) {
        if (key == 'w' || key == 'W') {
          position.y -= 4;
        }
        if (key == 's' || key == 'S') {
          position.y += 4;
        }
      }
    } else {
      if (keyPressed) {
        if (keyCode == 38) {
          position.y -= 4;
        }
        if (keyCode == 40) {
          position.y += 4;
        }
      }
    }
  }

  void update() {
    if(position.y < 0){
      position.y = 0;
    }
    if(position.y > height){
      position.y = height;
    }
    move();
  }
}
