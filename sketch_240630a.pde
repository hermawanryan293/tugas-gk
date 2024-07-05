PImage img;
PImage[] naga = new PImage[2]; // Menggunakan dua gambar naga
int nagaX = 100;
float nagaScale = 1; // Variabel untuk mengatur skala naga
int wingFlapSpeed = 10; // Kecepatan mengubah gambar naga

void setup() {
  size(1000, 600);
  smooth();
  img = loadImage("begron.jpg");
  naga[0] = loadImage("naga.gif");
  naga[1] = loadImage("naga1.gif");
  
  frameRate(60);
}

void draw() {
  image(img, 0, 0, width, height);
  
  // Mengatur skala sebelum menggambar naga
  pushMatrix();
  scale(nagaScale);
  
  // Menggunakan gambar naga yang bergantian untuk efek sayap bergerak
  image(naga[frameCount / wingFlapSpeed % 2], nagaX / nagaScale, 200 / nagaScale);
  
  popMatrix();
  
  nagaX = nagaX + 5;
  if (nagaX > width) {
    nagaX = -200;
  }
}
