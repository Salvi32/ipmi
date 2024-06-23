// Salvador Alberto Medina
// tp3 comisión 1
//Link al video: https://youtu.be/9f2bJKEnPEc
float diamanteX;
float diamanteY;
PImage imagen;
void setup () {
  size(800, 400);
  background(255);
  imagen = loadImage("m2.jpg");
  image(imagen, 0, 0, width/2, height);
}

void draw() {
  background(255);
  diamantes(width-200, height-200, width+600, height+600);
  diamantes2(diamanteX, diamanteY, width - 600, height - 100);
  diamantes2(600, 200, width - 600, height - 100);
  diamantes2(600, 400, width - 600, height - 100);
  diamantes2(600, 0, width - 600, height - 100);


  image(imagen, 0, 0, width/2, height);


  //for (int l= width/2+0; l<=width; l+=16) {
  //  stroke(255, 0, 0);
  //  line(l, 0, l, height);
  //  for (int l2 =width/2+5; l2<=width; l2+=16) {
  //    stroke(0, 255, 80);
  //    line(l2, 0, l2, height);
  //    for (int l3=width/2+9; l3<=width; l3+=16) {
  //      stroke(0, 0, 255);
  //      line(l3, 0, l3, height);
  //    }
  //  }
  //}
}
void diamantes(float centerX, float centerY, float width, float height) {
  noFill();
  stroke(0, 0, 0);

  for (float x = centerX - width / 2; x < centerX + width / 2; x += 5) {
    line(centerX, centerY - height / 2, x, centerY);
  }
  for (float x1 = centerX - width / 2; x1 < centerX + width / 2; x1 += 5) {
    line(centerX, centerY + height / 2, x1, centerY);
  }
}
void diamantes2(float centerX, float centerY, float width, float height) {
  noFill();
  stroke(50, 10, 100);

  for (float x = centerX - width / 2; x < centerX + width / 2; x += 6) {
    line(centerX, centerY - height / 2, x, centerY);
  }
  for (float x1 = centerX - width / 2; x1 < centerX + width / 2; x1 += 6) {
    line(centerX, centerY + height / 2, x1, centerY);
  }
}
void mouseMoved() {
  diamanteX = mouseX;
  diamanteY = mouseY;
}
