//music
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
//
Minim minim;
AudioPlayer song1; 
//
Boolean drawLine=false, drawEllipse= false;
Boolean rectON=false;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float clearTextX, clearTextY, clearTextWidth, clearTextHeight;
float circToolX, circToolY, circToolWidth, circToolHeight;
float lineToolX, lineToolY, lineToolWidth, lineToolHeight;
float toolBoxX, toolBoxY, toolBoxWidth, toolBoxHeight, toolBoxTitleX, toolBoxTitleY, toolBoxTitleWidth, toolBoxTitleHeight;
float colourBoxX, colourBoxY, colourBoxWidth, colourBoxHeight, colourBoxTitleX, colourBoxTitleY, colourBoxTitleWidth, colourBoxTitleHeight;
float playPauseX, playPauseY, playPauseWidth, playPauseHeight;
float helpX, helpY, helpWidth, helpHeight, helpRectX, helpRectY, helpRectWidth, helpRectHeight;
//colours
float colourRedX, colourRedY, colourRedWidth, colourRedHeight;
float colourOrangeX, colourOrangeY, colourOrangeWidth, colourOrangeHeight;
float colourYellowX, colourYellowY, colourYellowWidth, colourYellowHeight;
float colourGreenX, colourGreenY, colourGreenWidth, colourGreenHeight;
//
int reset=1;
color white=255, resetColour=white, red=#FF0303, black=0, cream =#F2F2F2, quitButtonColour, clearButtonColour, circButtonColour, lineButtonColour, helpButtonColour;
//
void setup() {
  fullScreen();
  population();
  textSetup();
  pieceOfPaper();
  musicSetup();
  //
}//End setup
//
void draw() {
  //
  musicDraw();
  //
  rect(helpX, helpY, helpWidth, helpHeight);
  if (rectON==true) rect(helpRectX, helpRectY, helpRectWidth, helpRectHeight);
  //
  if (paper==true) pieceOfPaper();
  //
  //Drawing Tools
  if ( drawLine==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) line( mouseX, mouseY, pmouseX, pmouseY ); 
  //else { drawLine = false;}
  ;//End Line Draw
  if ( drawEllipse==true && mouseX>=drawingSurfaceX && mouseX<=drawingSurfaceX+drawingSurfaceWidth && mouseY>=drawingSurfaceY && mouseY<=drawingSurfaceY+drawingSurfaceHeight ) ellipse ( mouseX, mouseY, drawingDiameter, drawingDiameter );
  //else { drawEllipse = false;}
  //
  hoverOver();
  //
  rects();
  //
}//End draw
//
void keyPressed() {
  musicKeyPressed();
  if ( key=='e' || key=='E' )
    if ( drawLine==true ) {
      drawLine=false;
    } else {
      drawLine=true;
    }
  //
  if ( key=='e' || key=='E' )
    if ( drawEllipse==true ) {
      drawEllipse=false;
    }
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
  }
  if (mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  //
  if (mouseX>=clearTextX && mouseX<=clearTextX+clearTextWidth && mouseY>=clearTextY && mouseY<=clearTextY+clearTextHeight) paper=true;
  //helpX, helpY, helpWidth, helpHeight
  if (mouseX>=helpX && mouseX<=helpX+helpWidth && mouseY>=helpY && mouseY<=helpY+helpHeight)
    if (rectON=false); 
  {
    rectON=true;
  }
  //
  if (mouseX>=helpX && mouseX<=helpX+helpWidth && mouseY>=helpY && mouseY<=helpY+helpHeight)
    if (rectON=true); 
  {
    rectON=false;
  }
}//End mousepressed
//
//End MAIN
