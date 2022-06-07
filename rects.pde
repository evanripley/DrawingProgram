void rects() {
  //rects
  //
  //quit
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
  //play pause
  fill(playPauseColour); 
  rect(playPauseX, playPauseY, playPauseWidth, playPauseHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 50; //Change until fits
  textFont(font, size);
  text(playPause, playPauseX, playPauseY, playPauseWidth, playPauseHeight);
  //
  //mute/unmute
  fill(muteButtonColour); 
  rect(muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight);
  fill(black); //Ink
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  size = 30; //Change until fits
  textFont(font, size);
  text(muteUnmute, muteButtonX, muteButtonY, muteButtonWidth, muteButtonHeight);
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
  //
}
