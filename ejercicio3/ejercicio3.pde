
float posX, posY, posY2;


void setup (){
  size(400, 400);
  smooth();
 
}

void draw() {
  
 /*cuadrado mapeo*/ 
 
  background(255);
  
  if(mouseX > 20 && mouseX < 70 && mouseY > 330 && mouseY < 380 ){
    posX = map(mouseX, 20, 70, 0, 400);
    posY = map(mouseY, 330, 380, 0, 200);
    posY2 = map(mouseY, 330, 380, 0, -200);
  
  }
  
  fill(255);
  stroke(1);
  rect(20,330,50,50);
  
  pushMatrix();
   /*cuadrado horizontal*/
  fill(0);
  stroke(0);
  rect(0,190,posX+20,20);
  /*cuadrado vertical1*/
  translate(posX,200);
  rect(0,0,20,posY);
  /*cuadrado vertical2*/
  rect(0,0,20,posY2);
  popMatrix();
  
  
}
