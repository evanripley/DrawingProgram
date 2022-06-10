//global variables
float redx, redy, redw, redh, orax, oray, oraw, orah, yelx, yely, yelw, yelh, grex, grey, grew, greh;

//
void colorButtons() {
}


void colorRects() {
  
  //
  strokeWeight(4);
  //red
  fill(colorRed);
  rect(redx, redy, redw, redh);
  //orange
  fill(colorOrange);
  rect(orax, oray, oraw, orah);
  //yellow
  fill(colorYellow);
  rect(yelx, yely, yelw, yelh);
}
