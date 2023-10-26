//import processing.pdf.*;

PFont myfont;
String glu="glu";
String pez=">oOo";

void setup() {
 // beginRecord(PDF,"fondo_mar_onomatopeya_5.pdf");
  myfont= createFont("IBMPlexMono-Regular.ttf",14);
  size(420,595);
  frameRate(1);
  
}
void draw(){
  background(255);
  println();
  fill(0);
  textFont(myfont);
  
  
  for(int i=0; i<1; i=i+1){
  cangrejo(random(width),560);
  }
  
  for(int i=0; i<1; i=i+1){
    planta(300,510);
  }
  
  for(int i=0; i<1; i=i+1){
    planta(50,510);
  }
  
  for(int i=0; i<1; i=i+1){
  glu(100,100);
  }
  for(int i=0; i<1; i=i+1){
  glu(300,300);
  }
  for(int i=0; i<1; i=i+1){
  glu(100,400);
  }
  
  for(int i=0; i<1; i=i+1){
    pez(50,180);
  }
  for(int i=0; i<1; i=i+1){
    pez(250,400);
  }
  for(int i=0; i<1; i=i+1){
    pez(50,500);
  }
  
  for(int i=0; i<10; i=i+1){
  burbuja_g(random(-10,430),random(30,400));
  }
  for(int i=0; i<10; i=i+1){
    burbuja_p(random(-10,430),random(30,400));
  }
  
  mar(2,25,10,100);
  mar(2,30,10,100);
  mar(2,35,10,100);
  mar(2,40,10,100);
  for(int i=0; i<8; i++){
  mar(random(-10,430),random(50,560),10,10);
  }
  suelo(-20,570,10,100);
}

void cangrejo(float px, float py){
  push();
  translate(px,py);
  text("╭╭Ö╮╮",10,0);
  pop();
}

void planta(float px, float py){
  push();
  translate(px,py);
  for(int i=0; i<12; i=i+1){
    text("╲|╱",(40),random(60));
  }
  pop();
}

void glu(float px, float py){
  push();
  translate(px,py);
  for(int i=0; i<2; i=i+1){
    text(glu,(40),random(40));
  }
  pop();
}

void pez(float px, float py){
push();
translate(px,py);
for(int i=0; i<3; i=i+1){
  rotate(radians(-25));
  text(pez, random(80), random(29));
}
  pop();
}

void burbuja_g (float px, float py){
  push();
  translate(px,py);
  text("o",50,100);
  pop();
}

void burbuja_p (float px, float py){
  push();
  translate(px,py);
  text("º",50,100);
  pop();
}

void mar(float px, float py, float espacio, float olas){
push();
translate(px,py);
fill(0);
for(int i=0; i<olas;i=i+1){
  text("~",i*espacio,0);
}
pop();
}

void suelo(float px, float py, float espacio, float arena){
  push();
  translate(px,py);
  fill(0);
  for(int i=0; i<arena;i=i+1){
    text("…",i*espacio,0);
  }
  pop();
 // endRecord();
  //exit();
}
