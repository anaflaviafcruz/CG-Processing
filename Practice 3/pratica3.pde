PImage tower, mirrorHorizontal, mirrorVertical;

void setup() {
  size(900, 1200);
  String url = "https://4.bp.blogspot.com/-OkI-_p7MGU4/WYRmeLBpy_I/AAAAAAAAJjo/P_x6EA9Ley8eklyZeZQJu57_QIePB-K5ACLcBGAs/s1600/powerpuffgirls.png";
  
  tower = loadImage(url, "png");
  int width = tower.width;
  int height = tower.height;
  
  mirrorHorizontal = createImage(width, height, ARGB);
  mirrorVertical = createImage(width, height, ARGB);
  tower.loadPixels();
  
  for(int y = 0; y < height; y ++){   
    for (int x = 0; x < width; x ++) {
       mirrorHorizontal.set(tower.width-x-1,y,tower.get(x,y));
       //mirrorVertical.set(x,tower.height-y-1,tower.get(x,y));
    }
  }
}

void draw() {
  image(mirrorHorizontal, 0, 0);
  save("meninaspoderosasHorizontal.png");
  //image(mirrorVertical, 0, 0);
  //save("meninaspoderosasVertical.png");
}
