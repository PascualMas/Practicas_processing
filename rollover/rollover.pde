PFont font;
int fondo;
String a; 
int locV;
int diametro;
int cub;

void setup() {
  size(400, 400);
  fondo = 255;
  font = loadFont("Monospaced.plain-48.vlw");
  textSize(60);
  textFont(font, 50);
  diametro = 0;
  
 
}

void draw () {
  background(fondo);
  noStroke(); 
  fill(255, 0, 0); 
  ellipse(200,200,diametro,diametro);
  fill(0, 200, 100);
  rect(100,100,cub,cub);

  
  noStroke();
  fill(255, 255, 0);
  rect(300, 20, 80, 80);
  rect(20, 20, 80, 80);
  rect(20, 300, 80, 80);
  rect(300, 300, 80, 80);
  
  if(mouseX > 20 && mouseX < 100 && mouseY > 20  && mouseY < 100) {
    fondo = 0;
  } else if (mouseX > 20 && mouseX < 100 && mouseY > 300 && mouseY < 380) {
   a = "Buenos Dias";
  
  } else if (mouseX > 300 && mouseX < 380 && mouseY > 20 && mouseY < 100) {
   diametro = 200;
   
  } else if (mouseX > 300 && mouseX < 380 && mouseY > 300 && mouseY < 380) {
   cub = 200;
   
  } else {
    a = "";
    fondo = 255;
    diametro = 0;
    cub = 0;
  }
  
  fill(0);
  text(a, 25, height- 200);
  
}
