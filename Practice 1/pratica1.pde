void setup(){
  size(800,1000);
}

void draw(){
  fill(78,185,180); //color predio
  rect(100,50,300,700); //predio
  rect(80,50,340,20); //topo predio
  fill(229,140,255); //color porta
  rect(150,500,200,500); //porta fora
  rect(200,500,100,500); //porta dentro
  line(250,500,250,1000); //vertical centro porta
  line(150,600,350,600); //horizontal centro porta
  fill(0,0,0,0); // color maçaneta
  rect(240,594,3,12);
  rect(260,594,3,12);
  
  //janelas
  fill(229,140,255);
  rect(120,350,50,100); //janela 1
  rect(180,350,50,100); //janela 2
  
  rect(110,450,130,20); //bancada 1
  
  rect(270,350,50,100); // janela 3
  fill(0,0,0); //apagando
  rect(330,350,50,100); //janela 4
  fill(229,140,255);
  rect(260,450,130,20); //bancada 2
  
  rect(120,200,50,100); //janela 5
  fill(229,140,255);//acendendo
  rect(180,200,50,100); //janela 6
  
  rect(110,300,130,20); //bancada 3
  
  rect(270,200,50,100); //janela 7
  fill(0,0,0); //apagando
  rect(330,200,50,100); //janela 8
  fill(229,140,255);
  rect(260,300,130,20); //bancada
  
  rect(270,80,110,80); //janela 9
  rect(260,160,130,20); //bancada
  
  rect(110,160,130,20); //bancada 1
  fill(0,0,0); //apagando
  rect(120,80,110,80);//janela 10
  
  //rect(110,450,130,20); //bancada 1
  
  //arvore
  fill(92,29,19); //color tronco 
  rect(600,300,20,500); //tronco arvore
  fill(125,255,26);    
  ellipse(610,300,60,250); 
  ellipse(610,150,60,175); 
  
  
  //platinhas na bancadas
  fill(125,255,26); 
  rect(120,440,110,10);
  rect(270,440,110,10);
  rect(120,290,110,10);
  rect(270,290,110,10); 
  rect(120,150,110,10);
  rect(270,150,110,10);
  
  save("atividade1.jpg");
}
