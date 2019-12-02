class Ball{
  PVector position, speed;
  int size, score1, score2;
  
  Ball(){
    position = new PVector(0.5*width, 0.5*height);
    speed = new PVector(3, 3);
    size = 8;
    score1 = score2 = 0;
  }
  
  void show(){
    fill(255);
    noStroke();
    rectMode(CENTER);
    square(position.x, position.y, size);
  }
  
  void move(){
    position.x += speed.x;
    position.y += speed.y;
  }
  
  void update() {
    if(position.y - 0.5*size < 0 || position.y + 0.5*size > height){
      PongSide.play();
      speed.y *= -1;
    }
    if(position.x > width){
      if(score1 != 9){
        PongScore.play();
      }
      score1 ++;
      position.set(0.5*width, 0.5*height);
      speed.set(-3, 3);
    }
    if(position.x < 0){
      if(score2 != 9){
        PongScore.play();
      }
      score2++;
      position.set(0.5*width, 0.5*height);
      speed.set(3, 3);
    }
    move();
  }
}
