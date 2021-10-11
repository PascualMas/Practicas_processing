float x, y, r, g, b;
String[] listaFrutas = {"melón", "naranja", "kiwi", "plátano", "manzana"};
PFont font;
int dim;
int contador;
float ang;

void setup() {
  size(400, 400);
  background(0);
  font = loadFont("CalifornianFB-Reg-48.vlw");
  frameRate(10);
  contador = 0;
  ang = radians(0);
}

void draw(){
  fill(0, 10);
  rect(0,0, width, height);
  x = random(-50, width-50);
  y = random(-10, height+10);
  r = random(255);
  g = random(255);
  b = random(255);
  dim = int(random(20,100));
  ang = radians(random(-30, 30));
  
  fill(r, g, b);
  textFont(font,dim);
  // text(listaFrutas[int(random(listaFrutas.length))], x, y);
  pushMatrix();
  translate(x, y);
  rotate(ang);
  text(listaFrutas[contador % 5], 0, 0);
  popMatrix();
  contador++;
  
}
