//Global Variables
Boolean draw=false;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float clearTextX, clearTextY, clearTextWidth, clearTextHeight;
int reset=1;
color white=255, resetColour=white, red=#FF0303, black=0, cream =#F2F2F2,  quitButtonColour, clearButtonColour;
//
void setup() {
  fullScreen();
  population();
  textSetup();
  pieceOfPaper();
  //
}//End setup
//
void draw() {
  //
  if (paper==true) pieceOfPaper();
  //
  //Drawing Tools, with a combined Boolean
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ) ;//End Line Draw
  if ( draw==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter ); //Circle Drawing Tool
  //
  //hoverover
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = white;
  }//End Quit Button Hoverover
  if (mouseX>=clearTextX && mouseX<=clearTextX+clearTextWidth && mouseY>=clearTextY && mouseY<=clearTextY+clearTextHeight) {
    clearButtonColour = cream;
  } else {
    clearButtonColour = white;
  }
  //
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  fill(resetColour); //White, not night mode friendly
  //
  //Text, Quit Button
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 20; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  //Second Rectangle with More Text
  fill(clearButtonColour); 
  rect(clearTextX, clearTextY, clearTextWidth, clearTextHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 13; //Change until fits
  textFont(font, size);
  text(clearTextString, clearTextX, clearTextY, clearTextWidth, clearTextHeight);
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  //Paper-Button
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }//End draw Boolean
  }//Button Paper (Drawing Surface)
  if (mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  //
  if (mouseX>=clearTextX && mouseX<=clearTextX+clearTextWidth && mouseY>=clearTextY && mouseY<=clearTextY+clearTextHeight) paper=true;
  //
}//End mousepressed
//
//End MAIN
