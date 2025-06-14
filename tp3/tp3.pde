//Salvador A. Medina
//tp3 comisión 5
//Link del video: https://youtu.be/6zyC6ojiF7s
PImage referencia;

float romboRotacion = 130; // En grados
boolean rotacionInvertida;
boolean rotacionActiva;

void setup() {
  size(800, 400);
  noStroke();
  referencia = loadImage("referencia.jpg");
}

void draw() {
  background(224, 188, 130);

  //  imagen original
  image(referencia, 0, 0, 400, 400);

  // rotación como  "toggle"
  if (rotacionActiva) {
    romboRotacion++;
  }

  // Trasladar origen al lado derecho para dibujar los 4 cuadrantes
  push();
  translate(400, 0);

  // Cuadrante Superior Izquierdo
  pushMatrix();
  translate(0, 0);
  drawGrilla(0, 0);
  popMatrix();

  // Cuadrante Superior Derecho
  pushMatrix();
  translate(400, 0);
  scale(-1, 1);
  drawGrilla(0, 0);
  popMatrix();

  // Cuadrante Inferior Izquierdo
  pushMatrix();
  translate(0, 400);
  scale(1, -1);
  drawGrilla(0, 0);
  popMatrix();

  // Cuadrante Inferior Derecho
  pushMatrix();
  translate(400, 400);
  scale(-1, -1);
  drawGrilla(0, 0 );
  popMatrix();

  pop();
}
//Esta función dibuja una cuadrícula de rombos de 11x11
void drawGrilla(int offsetX, int offsetY) {
  int columnas = 11;
  int filas = 11;

  float halfWidth = width / 2 ;
  float halfHeight = height / 2 ;

  halfWidth = 200;
  halfHeight = 200;
  // espaciado entre rombos.
  float baseEspacioX = halfWidth / columnas;
  float baseEspacioY = halfHeight / filas;
  //Tamaño de rombos
  float romboAncho = baseEspacioX * 0.9;
  float romboAlto = baseEspacioY * 1.1;

  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      //  posición central del rombo en esa celda.
      float baseX = baseEspacioX * i + baseEspacioX / 2;
      float baseY = baseEspacioY * j + baseEspacioY / 2;

      // distancia desde el centro total (22x22)
      int absI = i + offsetX;
      int absJ = j + offsetY;

      // mide qué tan lejos está cada rombo del centro visual
      int distCentroI = abs(absI - 10);
      int distCentroJ = abs(absJ - 10);
      int distCentro = max(distCentroI, distCentroJ);
      float maxDist = 10;
      //para diferencia el borde del centro
      float t = distCentro / maxDist;
      float colValor;
      //color con degradado
      if (t < 0.5) {
        colValor = map(t, 0, 0.5, 0, 255);
      } else {
        colValor = map(t, 0.5, 1.0, 255, 0);
      }

      noStroke();
      fill(colValor);

      float distanCentro = dist(baseX, baseY, halfWidth, halfHeight);
      float maxDistPx = dist(0, 0, halfWidth, halfHeight);
      float normDist = distanCentro / maxDistPx;
      float factor = map(normDist, 0, 1, 0.9, 1.01);

      float adjustedX = baseX * factor + (1 - factor) * halfWidth;
      float adjustedY = baseY * factor + (1 - factor) * halfHeight;

      pushMatrix();
      translate(adjustedX, adjustedY);
      rotate(radians(romboRotacion));
      drawRombo(0, 0, romboAncho, romboAlto);
      popMatrix();
    }
  }
}

void drawRombo(float cx, float cy, float w, float h) {
  beginShape();
  vertex(cx, cy - h / 2);
  vertex(cx + w / 2, cy);
  vertex(cx, cy + h / 2);
  vertex(cx - w / 2, cy);
  endShape(CLOSE);
}

void keyPressed() {
  if (keyCode == LEFT) {
    romboRotacion -= 130;
  } else if (keyCode == RIGHT) {
    romboRotacion += 130;
  } else if (key == ' ') {
    rotacionActiva = !rotacionActiva;
  }
}

void mousePressed() {
  rotacionInvertida = !rotacionInvertida;

  if (rotacionInvertida) { 
    romboRotacion = -130;
  } else {
    romboRotacion = 130;
  }
}
