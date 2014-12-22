class Ball{
  float x = width/2;
  float y = 455;
  float xSpeed =0;
  float ySpeed =0;
  float size;
  
  void move(){
    
    x+=xSpeed;
    y+=ySpeed;
    
    if (x<10 || x>width-10){
      xSpeed *= -1;
    }
    if (y<10 || y>height){
      ySpeed *= -1;
    }

    
    float bottom = y+size/2;
    float bl = board.y - 10/2;
    float bLeft = board.x-board.len/2;
    float bRight = board.x+board.len/2;
    if (bottom >= bl && x>bLeft && x<bRight){
        ySpeed *= -1;
        y = bl;
    }
   
  }
  void display(){
    ellipse(x,y,20,20);
  }
  
  boolean isHit(
        float circleX,
        float circleY,
        float radius,
        float rectangleX,
        float rectangleY,
        float rectangleWidth,
        float rectangleHeight){
      float circleDistanceX = abs(circleX - rectangleX);
      float circleDistanceY = abs(circleY - rectangleY);
   
      if (circleDistanceX > (rectangleWidth/2 + radius)) { return false; }
      if (circleDistanceY > (rectangleHeight/2 + radius)) { return false; }
   
      if (circleDistanceX <= (rectangleWidth/2)) { return true; }
      if (circleDistanceY <= (rectangleHeight/2)) { return true; }
   
      float cornerDistance_sq = pow(circleDistanceX - rectangleWidth/2, 2) +
                           pow(circleDistanceY - rectangleHeight/2, 2);
   
      return (cornerDistance_sq <= pow(radius,2));
  }
  
  Ball(){
    x = width/2;
    y = height;
    xSpeed = 5;
    ySpeed = 3;
    size = 10;
  }
  
  Ball(float size, float xSpeed){
    x = width/2;
    y = height;
    this.xSpeed = xSpeed;
    this.ySpeed = size;
    this.size = size;
  }
}
