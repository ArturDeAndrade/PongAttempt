class Display{
  int score1, score2;
  //Ball ball;
  //Paddle paddle1, paddle2;
  
  Display(){
    score1 = score2 = 0;
    //ball = new Ball();
    //paddle1 = new Paddle();
    //paddle2 = new Paddle();
  }
  
  void show(){
    gameScreen();
  }
  
  void gameScreen(){
    
    //Middle Line
    stroke(255);
    strokeWeight(8);
    line(width/2, 0, width/2, height);  //  TODO: Make this a dashed line(maybe using a for loop and an auxiliar y variable)
  }
}
