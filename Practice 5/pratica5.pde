PImage tower, mirrorRotation;
float O = radians(-33);

void setup() {
  size(1200, 1200);
  
  String url = "https://4.bp.blogspot.com/-OkI-_p7MGU4/WYRmeLBpy_I/AAAAAAAAxjo/P_x6EA9Ley8eklyZeZQJu57_QIePB-K5ACLcBGAs/s1600/powerpuffgirls.png";
  
  tower = loadImage("as-meninas-superpoderosas.jpg");
  int tower_width = tower.width;
  int tower_height = tower.height;
  tower.loadPixels();
  
  mirrorRotation = createImage(width, height, RGB);
  int mirror_width = mirrorRotation.width;
  int mirror_height = mirrorRotation.height;
  
  int xlinha, ylinha;
  for (int x = 0; x < mirror_width; x++) {
    for (int y = 0; y < mirror_height; y++ ) {

      xlinha = -250 + round(((x * cos(O)) + y * (-sin(O))));
      ylinha = round((x * sin(O)) + y * (cos(O)));
      
        float dcoluna, dlinha, pR, pB, pG, ControlR1, ControlR2, ControlB1, ControlB2, ControlG1, ControlG2;
        
        dcoluna = (x* cos(3.1415/4) + y* sin(3.1415/4)) - int(x* cos(3.1415/4) + y* sin(3.1415/4));
        dlinha = (y* cos(3.1415/4) - x* sin(3.1415/4)) - int(y* cos(3.1415/4) - x* sin(3.1415/4));
        
        ControlR1 = dcoluna * (red(tower.get(xlinha+1,ylinha)) - red(tower.get(xlinha,ylinha))) + red(tower.get(xlinha,ylinha));
        ControlR2 = dcoluna * (red(tower.get(xlinha+1,ylinha+1)) - red(tower.get(xlinha,ylinha+1))) + red(tower.get(xlinha,ylinha+1));
        ControlG1 = dcoluna * (green(tower.get(xlinha+1,ylinha)) - green((tower.get(xlinha,ylinha)))) + green(tower.get(xlinha,ylinha));
        ControlG2 = dcoluna * (green(tower.get(xlinha+1,ylinha+1)) - green(tower.get(xlinha,ylinha+1))) + green(tower.get(xlinha,ylinha+1));
        ControlB1 = dcoluna * (blue(tower.get(xlinha+1,ylinha)) - blue((tower.get(xlinha,ylinha)))) + blue(tower.get(xlinha,ylinha));
        ControlB2 = dcoluna * (blue(tower.get(xlinha+1,ylinha+1)) - blue(tower.get(xlinha,ylinha+1))) + blue(tower.get(xlinha,ylinha+1));
        
        
        pR = dlinha * (ControlR2 - ControlR1) + ControlR1;
        pG = dlinha * (ControlG2 - ControlG1) + ControlG1;
        pB = dlinha * (ControlB2 - ControlB1) + ControlB1;
        
        mirrorRotation.set(x, y, color(pR,pG,pB));   
    }
  }
  
  mirrorRotation.updatePixels();
}

void draw() {
  image(mirrorRotation, 0, 0);
  save("meninaspoderosasRotacao.png");
}
