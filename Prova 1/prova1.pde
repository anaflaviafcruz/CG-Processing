int width = 700, height=500;
int colorBackgR=0, colorBackgG=150, colorBackgB=0;
int colorQuadR=255, colorQuadG=255, colorQuadB=0;
int colorEllipseR=0, colorEllipseG=0, colorEllipseB=100;
float pos_disco_larg = width/2, pos_x1= 0.125*width, pos_x2=0.5*width, pos_x3=0.875*width, pos_x4=0.5*width;

PFont f;
String text = "ORDEM e PROGRESSO";

void setup() {
  size(700, 500);
  background(255,255,255);
  f = createFont("Arial", 16, true);
  textFont(f, 20);

  //opcao 1
  bandeiraOriginal();
  save("BandeiraOriginal.png");
}

void bandeiraOriginal() {
  stroke(colorBackgR, colorBackgG, colorBackgB);
  fill(colorBackgR, colorBackgG, colorBackgB);
  rect(4,4,692,492);
  float x1, y1, x2, y2, x3, y3, x4, y4;
  x1 = pos_x1; //um oitavo da largura da bandeira
  y1 = 0.5*height; //a metade da altura da bandeira;
  x2 = pos_x2; //a metade da largura da bandeira
  y2 = 0.125*height; //um oitavo da altura da bandeira;
  x3 = pos_x3; //sete oitavos da largura da bandeira
  y3 = 0.5*height; //a metade da altura da bandeira;
  x4 = pos_x4; //a metade da largura da bandeira
  y4 = 0.875*height; //sete oitavos da altura da bandeira

  //losango de cor amarela
  stroke(colorQuadR, colorQuadG, colorQuadB);
  fill(colorQuadR, colorQuadG, colorQuadB);
  quad(x1, y1, x2, y2, x3, y3, x4, y4);

  //disco de cor azulada
  stroke(colorEllipseR, colorEllipseG, colorEllipseB); 
  fill(colorEllipseR, colorEllipseG, colorEllipseB);
  ellipse(pos_disco_larg, height/2, width/3, width/3);

  //texto “ORDEM e PROGRESSO”, de cor amarela
  fill(colorQuadR, colorQuadG, colorQuadB);
  textAlign(CENTER);
  text(text, pos_disco_larg, height/2);
}

void draw() {
  //opção 2
  if (mousePressed && (mouseButton == LEFT))
  {
    colorBackgR=255-colorBackgR; 
    colorBackgG=255-colorBackgG; 
    colorBackgB=255-colorBackgB;
    colorQuadR=255-colorQuadR; 
    colorQuadG=255-colorQuadG; 
    colorQuadB=255-colorQuadB;
    colorEllipseR=255-colorEllipseR; 
    colorEllipseG=255-colorEllipseG; 
    colorEllipseB=255-colorEllipseB;
    bandeiraOriginal();
    save("BandeiraInvertida.png");

    //opção 3
  } else if (mousePressed && (mouseButton == RIGHT)) {
    pos_disco_larg+= int(0.125*width);
    pos_x1+= 0.125*width; 
    pos_x2+= 0.125*width; 
    pos_x3+=0.125*width; 
    pos_x4+=0.125*width;
    bandeiraOriginal();
    save("BandeiraDeslocada.png");
  } 
  if (keyPressed && (key == 't' || key == 'T')) {
    colorEllipseR=255; colorEllipseG=255; colorEllipseB=0;
    bandeiraOriginal();

    //3 nuanças de cor usando 3 fatores de transparência
    fill(0, 0, 100, 60);
    ellipse(pos_disco_larg, height/2, width/3, width/3);
    stroke(0, 0, 100, 60);
    fill(0, 0, 100, 127);
    ellipse(pos_disco_larg, height/2, width/4, width/4);
    fill(0, 0, 100, 255);
    ellipse(pos_disco_larg, height/2, width/6, width/6);
    
    //texto “ORDEM e PROGRESSO”, de cor amarela
    fill(colorQuadR, colorQuadG, colorQuadB);
    text("E", width/2, height/2);
    text("ORDEM",width/2,170); 
    textAlign(RIGHT);
    text("PROGRESSO",420,340); 
    save("BandeiraTransparencia.png");
  }
}
