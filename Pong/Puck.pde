class Puck{
  float x = width/2;
  float y = height/2;
  float xspeed = 4;
  float yspeed = 6;
  float r = 12;
  
  Puck(){
  }
  
  //Direction after hitting paddle
  void checkPaddleLeft(Paddle p){
    if(y < p.y + p.h/2 && y > p.y - p.h/2 && x - r < p.x + p.w/2){
      xspeed *= -1;
    }
  }
  void checkPaddleRight(Paddle p){
    if(y < p.y + p.h/2 && y > p.y - p.h/2 && x + r > p.x - p.w/2){
      xspeed *= -1;
  }
  }
  
  
 void update(){
 x = x + xspeed;
 y = y + yspeed;
 }
 
 void reset() {
   x = width/2;
   y = height/2;
 }
 
 void edges(){
   if (y < 0 || y > height){
     yspeed *= -1;
   }
   
   if (x > width ) {
     leftScore += 1;
     reset();
   }
   
   if (x < 0) {
     rightScore += 1;
     reset();
   }
 }
   
  void show() {
    fill(255);
    ellipse(x,y,r*2,r*2);
  }
}
