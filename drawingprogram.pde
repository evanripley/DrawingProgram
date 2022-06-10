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
int numberOfSongs = 3;
AudioPlayer[] song = new AudioPlayer[numberOfSongs]; 
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = numberOfSongs - numberOfSongs;
//
Boolean drawLine=false, drawEllipse= false;
//
PImage limeimg3, circimg2, stopimg;
//
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float clearTextX, clearTextY, clearTextWidth, clearTextHeight;
float circToolX, circToolY, circToolWidth, circToolHeight;
float lineToolX, lineToolY, lineToolWidth, lineToolHeight;
float toolBoxX, toolBoxY, toolBoxWidth, toolBoxHeight, toolBoxTitleX, toolBoxTitleY, toolBoxTitleWidth, toolBoxTitleHeight;
float colourBoxX, colourBoxY, colourBoxWidth, colourBoxHeight, colourBoxTitleX, colourBoxTitleY, colourBoxTitleWidth, colourBoxTitleHeight;
//music
float playPauseX, playPauseY, playPauseWidth, playPauseHeight;
float muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight;
float stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight;
float musicMetaDataX, musicMetaDataY, musicMetaDataWidth, musicMetaDataHeight;
float musicInfoX, musicInfoY, musicInfoWidth, musicInfoHeight;
//
int reset=1;
color white=255, resetColour=white, red=#FF0303, black=0, cream =#F2F2F2;
color quitButtonColour, clearButtonColour, circButtonColour, lineButtonColour, playPauseColour, muteButtonColour, stopButtonColour;
color colorRed=#FF0000, colorOrange=#FF7C00, colorYellow=#FEFF00;
//
void setup() {
  //
  limeimg3 = loadImage("images/limeimg3.png");
  circimg2 = loadImage("images/circimg2.png");
  stopimg = loadImage("images/stopimg.png");
  //
  //
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
  //

  //
  //
  if (paper==true) pieceOfPaper();
  //
  musicDraw();
  //
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
  colorRects();
  //
  image(limeimg3, lineToolX, lineToolY);
  image(circimg2, circToolX, circToolY);
  image(stopimg, stopButtonX*1.05, stopButtonY/1.0080);
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
  if ( key=='q' || key=='Q' )
    if ( drawEllipse==true ) {
      drawEllipse=false;
    } else {
      drawEllipse=true;
    }
}//End keyPressed
//lineToolX, lineToolY, lineToolWidth, lineToolHeight
void mousePressed() {
  //
  musicMousePressed();
  //
  //
  //
  //tools
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
  //
  //
  //
  //
  if (mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight) exit();
  //
  if (mouseX>=clearTextX && mouseX<=clearTextX+clearTextWidth && mouseY>=clearTextY && mouseY<=clearTextY+clearTextHeight) paper=true;
  //helpX, helpY, helpWidth, helpHeight
  //redx, redy, redw, redh
  if (mouseX>=redx && mouseX<=redx+redw && mouseY>=redy && mouseY<=redy+redh);
  //
  //
  //
}//End mousepressed
//
//End MAIN
