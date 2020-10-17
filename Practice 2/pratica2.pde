//utilizei o exemplo https://processing.org/reference/PImage_pixels.html
// Para fazer a cor invertida basta subitrair 255 do red, green, blue

PImage tower;

void setup() {
  size(900, 1200);
  String url = "https://4.bp.blogspot.com/-OkI-_p7MGU4/WYRmeLBpy_I/AAAAAAAAJjo/P_x6EA9Ley8eklyZeZQJu57_QIePB-K5ACLcBGAs/s1600/powerpuffgirls.png";
  
  tower = loadImage(url, "png");
  int dimension = tower.width * tower.height;
  tower.loadPixels();
  for (int i = 0; i < dimension; i ++) {
    float r = red(tower.pixels[i]);  
    float g = green(tower.pixels[i]);  
    float b = blue(tower.pixels[i]);  
 
    tower.pixels[i] = color(255-r,255-g,255-b); 
  } 
  tower.updatePixels();
}

void draw() {
  image(tower, 0, 0);
  save("meninaspoderosas.png");
}
