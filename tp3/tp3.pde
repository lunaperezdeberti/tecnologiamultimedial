
int estado;
PImage clase;
PImage aprendiz;
PImage maestro;
PImage puerta;
PImage cartel;
PImage bosque;
PImage aldea;
PImage bar;
PFont font;

void setup() {
  size(800, 600);
  textAlign(CENTER); 
  imageMode(CENTER);
  rectMode(CENTER);
  //fuente

  fill(#F2ED87);


  font= createFont("Old_Englished_Boots.ttf", 48);
  textFont(font);

  //estado
  estado=0;

  //imagenes
  aprendiz=loadImage("aprendiz.png");
  maestro=loadImage("maestro.png");
  clase=loadImage("clase.jpg");
  puerta=loadImage("puerta.jpg");
  cartel=loadImage("carteles.jpg");
  bosque=loadImage("bosque.jpg");
  aldea=loadImage("cena.jpg");
  bar=loadImage("bar1.jpg");
}

void draw() {



  //------------------------------------------------------------------estado0
  if (estado==0) {

    //pantalla 1
    background(100);
    fill(#F2ED87);
    textSize(200);
    text("Elije tu \nDESTINO!", width/2, height/2);
    fill(130);
    rect( 400, 550, 200, 50);
    fill(#F2ED87);
    textSize(35);
    text("COMENZAR", 400, 570);
    fill(0);
    textSize(25);
    text("creditos",700,570);
  }
  //--------------------------------------------estado1
  if (estado==1) {
    background(0);
    image(clase, width/2, height/2, 600, 600);
    fill(0);
    rect(300, 110, 410, 100);
    image(aprendiz, 600, 350, 100, 300);
    image(maestro, 200, 450, 200, 350);

    fill(#F2ED87);
    textSize(23);
    text("Joven aprendiz, ya haz terminado tus estudios generales,\nes momento de que vayas en busca de tu profesion.\nNo te olvides de seguir tu corazon.", 300, 100);

    fill(0);
    text("haz click aqui para continuar", 400, 570);
  }//--------------------------------------------------------------estado2
  if (estado==2) {
    background(0);
    image(cartel, width/2, height/2, 500, 600);
    fill(0);
    textSize(40);
    text("Bosque", 425, 100);
    text("Aldea", 400, 230);
    text("Castillo", 400, 360);
    fill(180);
    textSize(20);
    text("apreta la b", 425, 115);
    text("apreta la a", 400, 245);
    text("apreta la c", 410, 375);
  }
  //---------------------------------------------------------------estado3

  if (estado==3) { 

    background(0);
    image(bosque, width/2, height/2, 400, 600);
    fill(#F2ED87);
    textSize(30);
    text("Paseando por\n el bosque \nte encontraste con \nestas dos situaciones", 100, 250);

    rect(300, height/2, 150, 50);
    rect(500, 350, 200, 50);


    fill(0);
    textSize(25);
    text("Investigar hongos", 300, height/2);
    text("Inspeccionar cadaver", 500, 350);


    fill(255);
    textSize(20);
    text("apreta la h", 300, 315);
    text("apreta la i", 500, 365);
  }
  //---------------------------------------------------------------------estado4

  if (estado==4) {

    background(0);
    fill(#F2ED87);
    textSize(30);
    image(aldea, width/2, height/2, 400, 600);
    text("Al ingresar a \nla aldea tuviste\n la idea de visitar\n a tu familia", 100, 250);
    textSize(25);
    text("(1) Como puede ser\nque no haya trigo? \nel trigo es\nalgo importantisimo,\nire a ver que sucede.", 700, 140);
    text("(2) Esa enfermedad\n podria afectaros\n a todos nosotros,\n intentare buscar una\ncura y resolver este\nproblema", 700, 280);

    triangle(510, 130, 520, 130, 495, 145);
    rect(500, 100, 200, 60);

    triangle(440, 380, 450, 380, 430, 395);  
    rect(400, 350, 250, 60);

    fill(255);
    text("Apreta el \nnumero en tu\n teclado", 700, 50);


    textSize(25);
    fill(0);
    text("No consegui pan porque\n esta escaseando el trigo", 500, 100);
    text("Estan surgiendo mas\n casos de una enfermedad rara", 400, 350);
  }
  //-----------------------------------------------------------------------------------estado5
  if (estado==5) {

    background(0);
    image(bar, width/2, height/2, 800, 600);

    fill(#F2ED87);
    triangle(200, 100, 210, 100, 200, 115);
    rect(190, 75, 350, 50);

    triangle(480, 75, 495, 75, 480, 90);
    rect(480, 50, 250, 50);

    fill(0);
    textSize(30);
    text("De camino al castillo\nte topaste un bar y te desperto un gran apetito", width/2, 550);
    text("Elije con quien charlar", width/2, 25);
    textSize(20);
    text("Sobre ese punte...Donde sera construido?\nTengo entendido que sera el mas grande del castillo", 190, 75);
    text("Deberiamos reclutar a mas gente\npara el grupo de alquimia", 480, 50);
    text("apreta la p", 210, 40);
    text("apreta la q", 550, 25);
  }
  //-----------------------------------------------------------------------------------------------estado6

  if (estado==6) {

    //final trigo
    background(180);
    fill(0);
    textSize(40);
    text("Felicitaciones! Gracias a tu interes por los alimentos\n y el cultivo te convertiste en", width/2, 200);
    fill(#F2ED87);
    textSize(150);
    text("AGRICULTOR", width/2, 450);
    textSize(30);
    text("toca -espacio- para volver al principio",width/2,500);
  }


  //-----------------------------------------------------------------------------------------------estado7

  if (estado==7) {

    //final cura

    background(180);
    fill(0);
    textSize(40);
    text("Felicitaciones! Gracias a tu interes por\nla salud tuya y de los demas te convertiste en", width/2, 200);
    fill(#F2ED87);
    textSize(150);
    text("MEDICO", width/2, 450);
    textSize(30);
    text("toca -espacio- para volver al principio",width/2,500);
  }


  //-----------------------------------------------------------------------------------------------estado8

  if (estado==8) {

    //final hongo

    background(180);
    fill(0);
    textSize(40);
    text("Felicitaciones! Gracias a tu interes por\n descubrir e investigar la flora te convertiste en", width/2, 200);
    fill(#F2ED87);
    textSize(150);
    text("BOTANICO", width/2, 450);
    textSize(30);
    text("toca -espacio- para volver al principio",width/2,500);
  }


  //-----------------------------------------------------------------------------------------------estado9

  if (estado==9) {

    //final ciervo

    background(180);
    fill(0);
    textSize(40);
    text("Felicitaciones! Gracias a tu interes por\n descubrir e investigar la fauna te convertiste en", width/2, 200);
    fill(#F2ED87);
    textSize(150);
    text("ZOOLOGO", width/2, 450);
    textSize(30);
    text("toca -espacio- para volver al principio",width/2,500);
  }

  //-----------------------------------------------------------------------------------------------estado10

  if (estado==10) {

    //final puente

    background(180);
    fill(0);
    textSize(40);
    text("Felicitaciones! Gracias a tu interes por\n en la construccion te convertiste en", width/2, 200);
    fill(#F2ED87);
    textSize(150);
    text("ARQUITECTO", width/2, 450);
    textSize(30);
    text("toca -espacio- para volver al principio",width/2,500);
  }

  //-----------------------------------------------------------------------------------------------estado11

  if (estado==11) {

    //final alquimia

    background(180);
    fill(0);
    textSize(40);
    text("Felicitaciones! Gracias a tu interes por\n en la ciencia y el descubrimiento te convertiste en", width/2, 200);
    fill(#F2ED87);
    textSize(150);
    text("ALQUIMISTA", width/2, 450);
    textSize(30);
    text("toca -espacio- para volver al principio",width/2,500);
  }
  //-----------------------------------------------------------------------------------------------estado12CREDITOS

  if (estado==12) {

    //CREDITOS
    background(0);
    fill(255);
    textSize(40);
    text("Trabajo Practico N°3\nSIGUE EL CAMINO HACIA TU PROFESION",width/2, 200);
    textSize(30);
    text("Luna Perez De Berti\nTecnologia Multimedial 1\nComision 2\n2020",width/2,400);
    fill(#F2ED87);
    textSize(30);
    text("toca -espacio- para volver al principio",width/2,550);
  }
}


void mousePressed() {



  if ( mouseX >= 300 && mouseX <= 500 && mouseY >= 500 && mouseY <= 600 ) {
    estado=estado+1;}

    if ( mouseX >=600 && mouseX <=800 && mouseY >=500 && mouseY<=600){
      estado=12;
  
}
}
void keyPressed() {

  if ( key == 'b' )
    estado=3;

  if ( key == 'a' )
    estado =4;

  if ( key == 'c' )
    estado=5;

  if ( key == '1' )
    estado=6;

  if ( key == '2' )
    estado=7;

  if ( key == 'h')
    estado=8;
  if ( key == 'i')
    estado=9;

  if ( key == 'p')
    estado=10;

  if ( key == 'q')
    estado=11;
    
    if ( key == ' ')
    estado=0;
}
