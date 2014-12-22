class Brick{
  int bx = 40;
  int by = 40;
  
  void display(){
  fill(0,255,0);
  int sideX = 80, sideY =40;
  for (int col=0; col<11; col++){
    for (int row=0; row<5; row++){
      int x = sideX + col * bx*6/5;
      int y = sideY + row * by*6/5;
      if ( row % 2 == 0){ 
        rect(x,y,bx,by);
      }else{
        rect(x,y,bx,by);
      }
    }
  } 
 } 
  
  
  
  
}


