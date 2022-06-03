void hoverOver() {
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
  //help hoverover
  if ( mouseX>=helpX && mouseX<=helpX+helpWidth && mouseY>=helpY && mouseY<=helpY+helpHeight ) {
    helpButtonColour = cream;
  } else {
    helpButtonColour = white;
  }//End help Hoverover
  //
  //quithelp hoverover
  if ( mouseX>=quitButX && mouseX<=quitButX+quitButXWidth && mouseY>=quitButY && mouseY<=quitButY+quitButHeight ) {
    quitHelpButtonColour = cream;
  } else {
    quitHelpButtonColour = white;
  }//End quithelp Hoverover quitButX, quitButY, quitButXWidth, quitButHeight
}
