//Global Variables
Boolean drawLine=false, drawEllipse= false;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float clearTextX, clearTextY, clearTextWidth, clearTextHeight;
float circToolX, circToolY, circToolWidth, circToolHeight;
float lineToolX, lineToolY, lineToolWidth, lineToolHeight;
float toolBoxX, toolBoxY, toolBoxWidth, toolBoxHeight, toolBoxTitleX, toolBoxTitleY, toolBoxTitleWidth, toolBoxTitleHeight;
float colourBoxX, colourBoxY, colourBoxWidth, colourBoxHeight, colourBoxTitleX, colourBoxTitleY, colourBoxTitleWidth, colourBoxTitleHeight;
//colours
float colourRedX, colourRedY, colourRedWidth, colourRedHeight;
float colourOrangeX, colourOrangeY, colourOrangeWidth, colourOrangeHeight;
float colourYellowX, colourYellowY, colourYellowWidth, colourYellowHeight;
float colourGreenX, colourGreenY, colourGreenWidth, colourGreenHeight;
//
int reset=1;
color white=255, resetColour=white, red=#FF0303, black=0, cream =#F2F2F2, quitButtonColour, clearButtonColour, circButtonColour, lineButtonColour;
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
  //Drawing Tools
  if ( drawLine==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ); 
  //else { drawLine = false;}
  ;//End Line Draw
  if ( drawEllipse==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter );
  //else { drawEllipse = false;}
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
  }//end clear hoverover
  if ( mouseX>=circToolX && mouseX<=circToolX+circToolWidth && mouseY>=circToolY && mouseY<=circToolY+circToolHeight ) {
    circButtonColour = cream;
  } else {
    circButtonColour = white;
  }//End circ tool hoverover
  if ( mouseX>=lineToolX && mouseX<=lineToolX+lineToolWidth && mouseY>=lineToolY && mouseY<=lineToolY+lineToolHeight ) {
    lineButtonColour = cream;
  } else {
    lineButtonColour = white;
  }//End line tool hoverover
  //
  //rects
  fill(quitButtonColour);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  stroke(reset);
  fill(resetColour); //White, not night mode friendly
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 25; //Change until fits
  textFont(font, size);
  text(quitButtonString, quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  //Clear rect
  fill(clearButtonColour); 
  rect(clearTextX, clearTextY, clearTextWidth, clearTextHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 25; //Change until fits
  textFont(font, size);
  text(clearTextString, clearTextX, clearTextY, clearTextWidth, clearTextHeight);
  //
  //toolBox
  fill(white); 
  rect(toolBoxX, toolBoxY, toolBoxWidth, toolBoxHeight);
  fill(black); //Ink
  //title tools
  fill(white); 
  rect(toolBoxTitleX, toolBoxTitleY, toolBoxTitleWidth, toolBoxTitleHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 25; //Change until fits
  textFont(font, size);
  text(toolBoxString, toolBoxTitleX, toolBoxTitleY, toolBoxTitleWidth, toolBoxTitleHeight);
  //
  //colourBox
  fill(white); 
  rect(colourBoxX, colourBoxY, colourBoxWidth, colourBoxHeight);
  fill(black); //Ink
  //title colour
  fill(white); 
  rect(colourBoxTitleX, colourBoxTitleY, colourBoxTitleWidth, colourBoxTitleHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 25; //Change until fits
  textFont(font, size);
  text(colourBoxString, colourBoxTitleX, colourBoxTitleY, colourBoxTitleWidth, colourBoxTitleHeight);
  //
  //circ tool
  circButton();
  fill(circButtonColour); 
  rect(circToolX, circToolY, circToolWidth, circToolHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 16; //Change until fits
  textFont(font, size);
  text(circString, circToolX, circToolY, circToolWidth, circToolHeight);
  //
  //line tool
  lineButton();
  fill(lineButtonColour); 
  rect(lineToolX, lineToolY, lineToolWidth, lineToolHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 16; //Change until fits
  textFont(font, size);
  text(lineString, lineToolX, lineToolY, lineToolWidth, lineToolHeight);
}//End draw
//
void keyPressed() {
  //if (keyCode = e
}//End keyPressed
//lineToolX, lineToolY, lineToolWidth, lineToolHeight
void mousePressed() {
  //Paper-Button
  if (mouseX>=lineToolX && mouseX<=lineToolX+lineToolWidth && mouseY>=lineToolY && mouseY<=lineToolY+lineToolHeight ) {
    if (drawLine == false) {
      drawLine = true;
    } else {
      drawLine = false;
    }
  }//end drawLine
  //circToolX, circToolY, circToolWidth, circToolHeight
  if (mouseX>=circToolX && mouseX<=circToolX+circToolWidth && mouseY>=circToolY && mouseY<=circToolY+circToolHeight ) {
    if (drawEllipse == false) {
      drawEllipse = true;
    } else {
      drawEllipse = false;
    }
  }//end drawEllipse, drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight
  /*
  if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
   if (drawLine == true) {
   drawLine = false;
   } else {
   drawLine = true;
   }
   }//end eraseLine
   if (mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) {
   if (drawEllipse == true) {
   drawEllipse = false;
   } else {
   drawEllipse = true;
   }
   }//end eraseEllipse
   */
  //
  if (mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  //
  if (mouseX>=clearTextX && mouseX<=clearTextX+clearTextWidth && mouseY>=clearTextY && mouseY<=clearTextY+clearTextHeight) paper=true;
  //
}//End mousepressed
//
//End MAIN
