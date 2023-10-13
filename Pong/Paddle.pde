class Paddle {
  float x;
  float y = height/2;
  float w = 10;
  float h = 55;
  boolean movingUp;
  boolean movingDown;
  int speed = 10;
  
  
  Paddle(boolean left) {
    if (left){
    x = w/2;
  } else {
    x = width - w/2;
  }
  }

void show(){
  fill(255);
  rectMode(CENTER);
  rect(x,y,w,h);
  move();
}

void move(){
  if (movingUp){
    y -=speed;
  }
  else if(movingDown){
    y += speed;
  }
}
}
