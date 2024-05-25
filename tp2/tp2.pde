// salvador a. medina
// tp2 comisión 1

// Variables
int currentScreen = 0;
int alignment1 = CENTER; 
float fade = 255;
PImage screen1, screen2, screen3;
String text1 = "SouSou\nNo ";
String text2 = "La maga Frieren formaba parte del grupo\ndel héroe Himmel\nquienes derrotaron al Rey Demonio\ntras un viaje de 10 años";
String text3 = "Cuando Himmel muere \nFrieren se arrepiente\nde no haber pasado\nmas tiempo a su lado.";
float textX = 300;
float textY = 100;
float textSpeed = 1;
boolean showRestartButton = false;
PFont font;
float defaultTextSize = 25, btntxtSize = 20;
color textColor = color(255); // Color predeterminado del texto

void setup() {
  size(640, 480);
  font = loadFont("palatino.vlw"); 
  textFont(font);
  textSize(defaultTextSize);

  // Cargar imágenes
  screen1 = loadImage("imagen1.jpg");
  screen2 = loadImage("imagen2.jpg");
  screen3 = loadImage("imagen3.jpg");
}

void draw() {
  background(255);
  // Dibujar imagen y texto
  textSize(defaultTextSize);
  if (currentScreen == 0) {
    image(screen1, 0, 0, width, height);
    fill(textColor); 
    text(text1, textX, textY);
  } else if (currentScreen == 1) {
    image(screen2, 0, 0, width, height);
    fill(textColor); 
    text(text2, textX, textY);
  } else if (currentScreen == 2) {
    image(screen3, 0, 0, width, height);
    fill(textColor); 
    text(text3, textX, textY);
    showRestartButton = true;
  }

  // Animación de texto
  textX += textSpeed;

  // Verificar los límites de la ventana para el texto
  if (textX > width - textWidth(text3) || textX < 0) {
    textSpeed *= -1; // Cambiar la dirección si alcanza los bordes
  }
  
  // Fade  al cambiar de pantalla
  if (fade < 255) {
    fade += 5;
    fill(255, fade);
  }

  // Cambiar de pantalla 
  if (frameCount % (60 * 7) == 0 && currentScreen < 2) { // Cambio de pantalla cada 7 segundos
    currentScreen++;
    fade = 0;
  }

  // Mostrar botón de reinicio
  if (showRestartButton && currentScreen == 2) {
    fill(200);
    rect(width / 2 - 50, height - 70, 100, 50);
    fill(0);
    textAlign(alignment1);
    textSize(btntxtSize);
    text("Reiniciar", width / 2, height - 45);
  }
}

void mousePressed() {
  if (showRestartButton && mouseX > width / 2 - 50 && mouseX < width / 2 + 50 && mouseY > height - 70 && mouseY < height - 20) {
    currentScreen = 0;
    fade = 255;
    textX = 30;
    textSpeed = 1;
    showRestartButton = false;
  }
}
