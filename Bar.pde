class Bar{
  float x = 320;
  float y;
  float len;
 
  void move(){
    x= mouseX;   
}
  
  void display(){
    rectMode(CENTER);
    rect(x,y,len,10);
  }
 
  
  Bar(float len){
    this.y = 470;
    this.len = len;
  }
}
