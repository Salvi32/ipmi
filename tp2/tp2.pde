// salvador a. medina
// tp2 comisión 5

//variables
color titlecolor, textcolor, stroketitle, stroketext;
int textoAlpha = 0;
int DiapoActual = 0;
boolean presentacionActiva = false;
PImage btnReiniciar, btnReiniciarhover, btnPresentar, btnPresentarhover, portada, pantalla1, pantalla2, pantalla3, pantalla4, pantalla5, pantalla6, pantalla7, pantalla8, pantalla9, pantalla10, pantallafin;
String title1, text1, title2, text2, title3, text3, title4, text4, title5, text5, title6, text6, title7, text7, title8, text8, title9, text9, title10, text10, textfin;
PFont albertusita, AlbertusLight, AlbertusReg, AnironReg, AnironBold, Morris, MorrisBlack, Ringbearer;
//\
void setup() {
  size(640, 480);
  //color de texto
  titlecolor= color(255, 204, 0);
  stroketitle = color(84, 55, 14);
  textcolor= color(84, 55, 14);
  stroke(0);
  strokeWeight(5);
  //diapositivas
  portada=loadImage("portadalotr2.png");
  pantalla1=loadImage("1.jpg");
  pantalla2=loadImage("2.jpg");
  pantalla3=loadImage("3.jpg");
  pantalla4=loadImage("4.jpg");
  pantalla5=loadImage("5.jpg");
  pantalla6=loadImage("6.jpg");
  pantalla7=loadImage("7.png");
  pantalla8=loadImage("8.jpg");
  pantalla9=loadImage("9.jpg");
  pantalla10=loadImage("10.jpg");
  pantallafin = loadImage("final.jpg");
  //botones
  btnPresentar=loadImage("btnpresentar.png");
  btnPresentarhover=loadImage("btnpresentarhover.png");
  btnReiniciar = loadImage("btnreiniciar.png");
  btnReiniciarhover= loadImage("btnreinciarhover.png");
  //strings
  title1 = "Tras la ruptura de la Comunidad";
  text1 = "Frodo y Sam continúan su viaje hacia Mordor para destruir el Anillo Único, mientras los demás miembros se separan.";
  title2 = "Gollum aparece";
  text2 = "Frodo y Sam son seguidos por Gollum, una criatura corrompida por el Anillo. Lo capturan y lo obligan a guiarlos.";
  title3 = "Aragorn, Legolas y Gimli persiguen a los orcos";
  text3 = "El trío persigue a los orcos que secuestraron a Merry y Pippin tras la batalla en Amon Hen.";
  title4 = "Merry y Pippin en el bosque de Fangorn";
  text4 = "Los hobbits escapan y conocen a Bárbol, un Ent (pastor de árboles) que los lleva con los suyos.";
  title5 = "El retorno de Gandalf";
  text5 = "Gandalf regresa como el 'Blanco', más poderoso, tras vencer al Balrog. Se une a Aragorn y los demás.";
  title6 = "Rohan y el Rey Théoden";
  text6 = "Gandalf libera al Rey Théoden del control de Saruman. Preparan la defensa del reino.";
  title7 = "La batalla del Abismo de Helm";
  text7 = "El ejército de Rohan, junto con Aragorn y los demás, se enfrenta a los orcos de Saruman en una batalla épica.";
  title8 = "Los Ents atacan Isengard";
  text8 = "Convencidos por Merry y Pippin, los Ents marchan hacia Isengard y destruyen la torre de Saruman.";
  title9 = "Gollum lucha con su doble personalidad";
  text9 = "Mientras guía a Frodo y Sam, Gollum empieza a debatirse entre su parte buena (Sméagol) y su lado oscuro.";
  title10 = "Hacia Mordor";
  text10 = "La historia termina con Frodo y Sam acercándose a Mordor, con Gollum planeando traicionarlos.";
  textfin = "Fin";

  //Fuentes
  albertusita =loadFont("AlbertusItalic.vlw");
  AlbertusLight = loadFont("AlbertusLight.vlw");
  AlbertusReg = loadFont("AlbertusReg.vlw");
  AnironReg = loadFont("Aniron-48.vlw");
  AnironBold = loadFont("AnironBold.vlw");
  Morris=loadFont("MorrisRoman.vlw");
  MorrisBlack=loadFont("MorrisRomanBlack.vlw");
  Ringbearer=loadFont("Ringbearer.vlw");
  
}

void draw() {
  background(255);

  //Pantalla "portada"
  if (DiapoActual == 0 && !presentacionActiva) {
    image(portada, 0, 0, width, height);

    //efecto Hover en el botón presentar
    if (mouseX > 342 && mouseX < 342 + 180 && mouseY > 320 && mouseY < 320 + 60) {
      image(btnPresentarhover, 342, 320, 180, 60);
    } else {
      image(btnPresentar, 342, 320, 180, 60);
    }
  }

  // diapositivas
  if (presentacionActiva && DiapoActual > 0 && DiapoActual < 11) {
    fill(titlecolor);
    textFont(Morris);
    textSize(20);
    textAlign(CENTER);
    if (DiapoActual == 1) {
      image(pantalla1, 0, 0, width, height);
      textSize(48);
      text(title1, 331, 40);
      textFont(AlbertusReg);
      textSize(30);
      text(text1, 30, 90, width - 40, 150);
    }
    if (DiapoActual == 2) {
      image(pantalla2, 0, 0, width, height);
      textSize(48);
      textFont(Morris);
      text(title2, 331, 40);
      textFont(AlbertusReg);
      textSize(30);
      text(text2, 30, 200, width - 50, 150);
    }
    if (DiapoActual == 3) {
      image(pantalla3, 0, 0, width, height);
      textFont(Morris);
      fill(0);
      textSize(35);
      text(title3, 331, 40);
      textFont(AlbertusReg);
      textSize(30);
      text(text3, 30, 90, width - 30, 150);
    }
    if (DiapoActual == 4) {
      image(pantalla4, 0, 0, width, height);
      textFont(Morris);
      fill(0);
      textSize(35);
      text(title4, 331, 40);
      textFont(AlbertusReg);
      textSize(30);
      text(text4, 30, 90, width - 40, 150);
    }
    if (DiapoActual == 5) {
      image(pantalla5, 0, 0, width, height);
      fill(titlecolor);
      textFont(AlbertusReg);
      textSize(30);
      text(text5, 30, 320, width - 40, 150);
    }
    if (DiapoActual == 6) {
      image(pantalla6, 0, 0, width, height);
      textFont(Morris);
      fill(titlecolor);
      textSize(35);
      text(title6, 331, 40);
      textFont(AlbertusReg);
      textSize(30);
      text(text6, 30, 400, width - 40, 150);
    }
    if (DiapoActual == 7) {
      image(pantalla7, 0, 0, width, height);
      textFont(Morris);
      fill(titlecolor);
      textSize(35);
      text(title7, 331, 40);
      textFont(AlbertusReg);
      textSize(30);
      text(text7, 30, 90, width - 40, 150);
    }
    if (DiapoActual == 8) {
      image(pantalla8, 0, 0, width, height);
      textFont(Morris);
      fill(titlecolor);
      textSize(35);
      text(title8, 331, 40);
      textFont(AlbertusReg);
      textSize(30);
      text(text8, 30, 90, width - 40, 150);
    }
    if (DiapoActual == 9) {
      image(pantalla9, 0, 0, width, height);
      textFont(Morris);
      fill(titlecolor);
      textSize(35);
      text(title9, 331, 40);
      textFont(AlbertusReg);
      textSize(30);
      text(text9, 30, 380, width - 40, 150);
    }
    if (DiapoActual == 10) {
      image(pantalla10, 0, 0, width, height);
      textFont(Morris);
      fill(titlecolor);
      textSize(35);
      text(title10, 331, 40);
      textFont(AlbertusReg);
      textSize(30);
      text(text10, 30, 90, width - 40, 150);
    }

    //avance de diapos cada 7 segs aprox
    if (frameCount % (60 * 7) == 0 && DiapoActual < 11) {
      DiapoActual++;
    }
  }

  //final ppt
  if (presentacionActiva && DiapoActual == 11) {
    image(pantallafin, 0, 0, width, height);
    textSize(50);
    fill(titlecolor);
    text(textfin,15,160,width -20,height);

    // Hover botón reiniciar
    if (mouseX > 230 && mouseX < 230 + 180 && mouseY > 380 && mouseY < 380 + 60) {
      image(btnReiniciarhover, 230, 380, 180, 60);
    } else {
      image(btnReiniciar, 230, 380, 180, 60);
    }
  }
}
void mousePressed() {
  println("Coord X: " + mouseX + ", coord Y:" + mouseY);

  // Clic en botón PRESENTAR
  if (!presentacionActiva && mouseX > 342 && mouseX < 342 + 180 && mouseY > 320 && mouseY < 320 + 60) {
    presentacionActiva = true;
    DiapoActual = 1;
    frameCount = 0;
  }

  // Clic en botón REINICIAR
  if (presentacionActiva && DiapoActual == 11 && mouseX > 230 && mouseX < 230 + 180 && mouseY > 380 && mouseY < 380 + 60) {
    presentacionActiva = false;
    DiapoActual = 0;
    frameCount = 0;
  }
}
