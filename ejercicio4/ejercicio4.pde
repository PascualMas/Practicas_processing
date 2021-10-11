int colCuad, locH, locW;
int cuadrado, makeinvisible;
float posX, posY;
int contador;
int colpres;
float tamText;
float codX, codY;


void setup(){
size(400,400);
smooth();
PFont fuente;
fuente = loadFont("SansSerif.bold-48.vlw");
textFont(fuente);
colCuad = color(0, 255, 0);

}

void draw(){
background(255);
noStroke();

 if(mouseX > 170 && mouseX < 230 && mouseY > 280  && mouseY < 340) {
    cuadrado = colCuad;
  }else{
    cuadrado = 0;}
   
 
  if(mouseX > 170 && mouseX < 230 && mouseY > 280  && mouseY < 340) {
    posX = map(mouseX, 170, 230, 10, 80);
  }
  
    


fill(cuadrado);
rect(170 ,280 , 60,60);

pushMatrix();
fill(200,0,0, makeinvisible);

translate(locH,locW);
locH += 5;
if (locH > width) {
    locH = 0;
    locW = locW+30;
  }
 if (locW > height) {
    locW = 0;
  }
 
  
ellipse(50,50,posX,posX); 
popMatrix();

fill(0);
textSize(tamText); 
text(contador, codX, codY);
fill(0, 0, 255, colpres);
rect(170 ,280 , 60,60);
fill(255, colpres);
ellipse(200,310,40,40);
stroke(255,0,0, makeinvisible);
line(200, 310, locH+45, locW+50);
}
void mousePressed() {
  
  contador++;
 if(mouseX > 170 && mouseX < 230 && mouseY > 280  && mouseY < 340) {
    colpres = 255;
    makeinvisible = 255;
  
}
    
    
 
}

void mouseReleased() {
   if(mouseX > 170 && mouseX < 230 && mouseY > 280  && mouseY < 340) {
    colpres = 0;
    tamText = random(20, 200);
    codX = random(20, 380);
    codY = random(20, 380);
    makeinvisible = 0;
    
    
}
  

}
