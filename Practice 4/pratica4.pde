PImage tower, mirrorRotation;
float O = radians(-33);

void setup() {
  size(1200, 1200);
  
  String url = "https://4.bp.blogspot.com/-OkI-_p7MGU4/WYRmeLBpy_I/AAAAAAAAxjo/P_x6EA9Ley8eklyZeZQJu57_QIePB-K5ACLcBGAs/s1600/powerpuffgirls.png";
  
  tower = loadImage(url, "png");
  int width = tower.width;
  int height = tower.height;
  tower.loadPixels();
  
  mirrorRotation = createImage(width + 500, height + 500, RGB);
  
  int xlinha, ylinha;
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++ ) {

      xlinha = round(((x * cos(O)) + y * (-sin(O))));
      ylinha = 500 + round((x * sin(O)) + y * (cos(O)));
      
      //mirrorRotation.set(xlinha, ylinha , tower.get(x,y));   
      int loc = x + y * width;
      
      if(!(ylinha < 0 || xlinha < 0 || xlinha >= width || ylinha >= height)){
      
        float dcoluna, dlinha, pR, pB, pG, ControlR1, ControlR2, ControlB1, ControlB2, ControlG1, ControlG2;
        
        dcoluna = (x* cos(3.1415/4) + y* sin(3.1415/4)) - int(x* cos(3.1415/4) + y* sin(3.1415/4));
        dlinha = (y* cos(3.1415/4) - x* sin(3.1415/4)) - int(y* cos(3.1415/4) - x* sin(3.1415/4));
        
        ControlR1 = dcoluna * (red(tower.get(x+1,y)) - red(tower.get(x,y))) + red(tower.get(x,y));
        ControlR2 = dcoluna * (red(tower.get(x+1,y+1)) - red(tower.get(x,y+1))) + red(tower.get(x,y+1));
        ControlG1 = dcoluna * (green(tower.get(x+1,y)) - green((tower.get(x,y)))) + green(tower.get(x,y));
        ControlG2 = dcoluna * (green(tower.get(x+1,y+1)) - green(tower.get(x,y+1))) + green(tower.get(x,y+1));
        ControlB1 = dcoluna * (blue(tower.get(x+1,y)) - blue((tower.get(x,y)))) + blue(tower.get(x,y));
        ControlB2 = dcoluna * (blue(tower.get(x+1,y+1)) - blue(tower.get(x,y+1))) + blue(tower.get(x,y+1));
        
        
        pR = dlinha * (ControlR2 - ControlR1) + ControlR1;
        pG = dlinha * (ControlG2 - ControlG1) + ControlG1;
        pB = dlinha * (ControlB2 - ControlB1) + ControlB1;
        
        mirrorRotation.pixels[loc] = color(pR,pG,pB); 
      }
    }
  }
  
  mirrorRotation.updatePixels();
}

void draw() {
  image(mirrorRotation, 0, 0);
  save("meninaspoderosasRotacao.png");
}
