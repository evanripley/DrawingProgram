void hoverOver() {
  //hoverover
  if ( mouseX>=quitButtonX && mouseX<=quitButtonX+quitButtonWidth && mouseY>=quitButtonY && mouseY<=quitButtonY+quitButtonHeight ) {
    quitButtonColour = red;
  } else {
    quitButtonColour = white;
  }//End Quit Button Hoverover
  //
  if (mouseX>=clearTextX && mouseX<=clearTextX+clearTextWidth && mouseY>=clearTextY && mouseY<=clearTextY+clearTextHeight) {
    clearButtonColour = cream;
  } else {
    clearButtonColour = white;
  }//end clear hoverover
  //
  if ( mouseX>=circToolX && mouseX<=circToolX+circToolWidth && mouseY>=circToolY && mouseY<=circToolY+circToolHeight ) {
    circButtonColour = cream;
  } else {
    circButtonColour = white;
  }//End circ tool hoverover
  //
  if ( mouseX>=lineToolX && mouseX<=lineToolX+lineToolWidth && mouseY>=lineToolY && mouseY<=lineToolY+lineToolHeight ) {
    lineButtonColour = cream;
  } else {
    lineButtonColour = white;
  }//End line tool hoverover
  //
  if (mouseX>=playPauseX && mouseX<=playPauseX+playPauseWidth && mouseY>=playPauseY && mouseY<=playPauseY+playPauseHeight) {
    playPauseColour = cream;
  } else {
    playPauseColour = white;
  }//end playpause hoverover
  //muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight
  if (mouseX>=muteButtonX && mouseX<=muteButtonX+muteButtonWidth && mouseY>=muteButtonY && mouseY<=muteButtonY+muteButtonHeight) {
    muteButtonColour = cream;
  } else {
    muteButtonColour = white;
  }//end playpause hoverover
  //
}
