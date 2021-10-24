String[] palabras = {"Con", "estas", "palabras", "que", "vienen", "y", "van", 
"finalizamos", "el", "curso", "de", "processing", "Hasta Pronto"};
PFont fuente;
int recorrido, textSize;



void setup() {
  size(400, 400);
  textSize = 0;
  fuente = loadFont("OpenSans-Regular-48.vlw");
  textFont(fuente);
  
  }

void draw() {
  background(0);
  pushMatrix();

  recorrido += 2*1;
  
  text(palabras[0], recorrido, 200);
  
  
if (recorrido > width-100) {
    recorrido += 2*-1;
    /*palabras[1];*/
    
    
  }
 popMatrix();
 
 
 
  
}

void mousePressed() {
  
}
