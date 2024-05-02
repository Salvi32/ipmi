// salvador a. medina
// tp1 comisión 1

//  Variable para guardar la imagen
PImage perro;
 // variable Coordenadas y dimensiones para las patas
  int pataAncho = 13; // Ancho de cada pata
  int pataAlto = 50; // Alto de cada pata
  int espacioEntrePatas = 43; // Espacio entre las patas
  
  // variables Posiciones para las patas
  int xInicial = 560; // Coordenada X 
  int yInicial = 220; // Coordenada Y para todas las patas

void setup() {
  //  tamaño de ventana
  size(800, 400);
  //  Carga y define la ruta de la imagen.
  perro = loadImage("1.jpg");
}

void draw() {
  //  cielo
  fill(145,211,228);
  noStroke();
  rect(400,0,400,400);
 
  //  suelo
  fill(126,150,7);
  noStroke();
  rect(400,265,400,400);
  
  //arbol
  fill(160,82,44);
  rect(429,130,30,230);
  //hojas
  fill(117,125,18);
  ellipse(460,122,60,60); 
  ellipse(430,122,60,60);
  ellipse(460,80,60,60);
  ellipse(430,80,60,60);
  
  //  imagen en la mitad izquierda de la venatana
  stroke(1);
  image(perro, 0, 0, 400, 400);

  //  patas
  stroke(1);
  fill(160, 82, 45); // Color marrón para las patas del perro
  
  // patas delanteras
  rect(xInicial, yInicial, pataAncho, pataAlto);
  rect(xInicial + pataAncho + espacioEntrePatas, yInicial, pataAncho, pataAlto);
 
  //  patas traseras 
  rect(xInicial +6, yInicial, pataAncho, pataAlto);
  rect(xInicial + pataAncho + espacioEntrePatas +6 , yInicial, pataAncho, pataAlto);
  
  // Cuerpo del perro
  fill(160, 82, 45); // color marrón
  ellipse(600, 200, 150, 75); 

  // Cabeza del perro
  fill(160, 82, 45); // color marrón
  ellipse(600, 160, 75, 75); 

  // Ojos
  fill(0); // color negro
  ellipse(585, 150, 10, 10); // ojo izquierdo
  ellipse(610, 150, 10, 10); // ojo derecho

  // Nariz
  ellipse(598, 175, 10, 10); // nariz

  // Orejas
  fill(139, 69, 19); // color marrón oscuro
  triangle(559, 130, 569, 110, 579, 130); // oreja izquierda
  triangle(620, 130, 630, 110, 639, 130); //oreja derecha

  // Cola
  stroke(160, 82, 45); // color marrón 
  line(570, 200, 500, 130); // cola
}
void mousePressed() {
    println("Mouse Clicked at X: " + mouseX + ", Y: " + mouseY); // Imprime las coordenadas al hacer clic
}
