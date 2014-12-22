Ball a;
Bar board;
Brick b;

void setup(){
  size(640,480);
  background(0);
  a = new Ball(); //balls
  board = new Bar(100);
  b = new Brick(); 
}

void draw(){
  background(0);
  drawLife();
  a.display();
  a.move();
  board.move();
  board.display();
  b.display();
 }

void drawLife(){
  fill(230, 74, 96);
  textSize(30);
  text("LIFE:", 50, 450);
  for(int i=0; i<3; i++ ){
    ellipse(130+25*i, 440, 20, 20);
  }
}




