Puck puck;
ArrayList<Paddle> paddles = new ArrayList<Paddle>(); 
int rightScore = 0;
int leftScore = 0;


void setup() {
  size(1000, 800);
  puck = new Puck();
  paddles.add(new Paddle(true));  
  paddles.add(new Paddle(false)); 

}

void draw() {
  background(0);
  
  puck.checkPaddleLeft(paddles.get(0)); 
  puck.checkPaddleRight(paddles.get(1)); 

  for (Paddle paddle : paddles) {
    paddle.show();
    paddle.move();
    
  }

  puck.update();
  puck.edges();
  puck.show();
  
  fill(255);
  textSize(50);
  text(rightScore, 40, 50);
  text(leftScore, width - 80, 50);
}

void keyPressed(){
  
    for (Paddle paddle : paddles) {
    if (paddles.indexOf(paddle) == 0) {
      if (key == 'w') {
        paddle.movingUp = true;
      }
      if (key == 's') {
        paddle.movingDown = true;
      }
    } else if (paddles.indexOf(paddle) == 1) {
      if (key == 'i') {
        paddle.movingUp = true;
      }
      if (key == 'k') {
        paddle.movingDown = true;
      }
    }
  }
}


void keyReleased(){
  
for (Paddle paddle : paddles) {
    if (paddles.indexOf(paddle) == 0) {
      if (key == 'w') {
        paddle.movingUp = false;
      }
      if (key == 's') {
        paddle.movingDown = false;
      }
    } else if (paddles.indexOf(paddle) == 1) {
      if (key == 'i') {
        paddle.movingUp = false;
      }
      if (key == 'k') {
        paddle.movingDown = false;
      }
    }
  }
  
  }
