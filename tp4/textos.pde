void textos(color c, float tamText, float x, float y,int i){

pushStyle();
 
 fill(c);
 textSize (tamText);
 text (mistextos[i], x,y);


popStyle();
}
