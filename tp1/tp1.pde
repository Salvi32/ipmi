//Salvador A. Medina 
//tp1 comisión 5
PImage pintura;
color negro, rojo, azul, amarillo, verde, gris, fondo;


void setup(){
size(800,400); //tamaño de ventana
pintura = loadImage("obra.png"); //guarda la imagen "obra.png" en la variable "pintura"
negro = color(62,62,62);
rojo = color(206, 81, 72);
azul = color(91, 125, 176);
amarillo = color(235, 210, 78);
verde = color(102, 151, 112);
gris = color(108, 113, 118);
fondo = color(250, 237, 222);
}

void draw(){
  //el orden del código o las "capas" es de izquierda a derecha de arriba hacia abajo, excepto la construcción del fondo con las barras superior e inferior de color gris.
fill(248, 235, 220);
noStroke();
rect(400,0,400,400);
image(pintura,0,0, width/2, height); // width/2 toma "automaticamente" el ancho de la ventana y lo divide en 2 (la mitad) 

fill(fondo-10);
rect(480,82,260,235); //fondo entre las barras grises)
pushMatrix(); //profe acá use el pushMatrix y popMatrix para que la configuración del stroke no me afecte a todo el código, intente hacerlo con un rectangulo y utilizando translate y rotate(radians()); pero no logré entender del todo como funciona.
strokeWeight(25);
strokeCap(SQUARE);
stroke(negro);
line(566, 75, 509,182);
popMatrix();
noStroke();
fill(gris);
rect(480,65,260,18); //barra gris superior
fill(gris);
rect(480,316,260,18);//barra gris inferior
stroke(rojo);
strokeWeight(2);
line(480,115,530,115);//cruz roja superior izq
line(505,95,505,135);//cruz roja superior izq
ellipseMode(CENTER);
noFill();
stroke(amarillo);
circle(586,166,50);
stroke(azul);
strokeWeight(20);
line(625,82,625,316);
line(517,198,559,208);
line(560,208,740,208);
strokeWeight(1);
fill(azul);
triangle(555,217,565,218,560,201);
strokeWeight(2);
line(676,82,676,114);
line(655,98,698,98);
noFill();
stroke(rojo);
circle(708,117,35);
stroke(negro);
strokeWeight(2);
strokeJoin(MITER);
line(660,130,692,130);
line(660,130,689,198);
line(692,130,722,198);
noStroke();
fill(negro);
rect(480,218,83,98);
stroke(fondo);
strokeWeight(2);
line(496,290,527,244);
line(527,244,550,244);
line(550,244,520,290);
line(496,290,520,290);
stroke(amarillo);
line(505,252,563,252);
stroke(rojo);
line(563,252,608,252);
line(590,235,590,270);
beginShape();
noStroke();
fill(amarillo);
vertex(563,275);
vertex(590, 275);
vertex(615, 316);
vertex(589, 316);
endShape(CLOSE);
beginShape();
fill(verde);
vertex(635,243);
vertex(688,253);
vertex(740,253);
vertex(740,266);
vertex(688,266);
vertex(635,256);
endShape(CLOSE);
rect(688,230,15,75);
strokeWeight(2);
stroke(negro);
line(722,218,722,299);
line(740,238,674,238);
}

void mousePressed(){
 println("Coord X: " +mouseX + ", coord Y:" +mouseY); // cuando se apreta click en la ventana del programa "imprime" en la consola la coordenada x e y
}
