Display gameWindow;

void setup(){
  size(1000, 600);
  
  gameWindow = new Display();
}

void draw(){
  background(0);
  
  gameWindow.show();
}
