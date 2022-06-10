//global variables
//
void population() {
  //paper
  drawingSurfaceX = displayWidth*1/50;
  drawingSurfaceY = displayHeight*1/50;
  drawingSurfaceWidth = displayWidth*3/4;
  drawingSurfaceHeight = displayHeight*4/5;
  drawingDiameter = displayWidth*1/100;
  //color rects
  redx = displayWidth*16.2/20;
  redy = displayHeight*13/20;
  redw = displayWidth*1/20;
  redh = displayHeight*1/20;
  //
  orax = displayWidth*17.2/20;
  oray = displayHeight*13/20;
  oraw = displayWidth*1/20;
  orah = displayHeight*1/20;
  //
  yelx = displayWidth*18.2/20;
  yely = displayHeight*13/20;
  yelw = displayWidth*1/20;
  yelh  = displayHeight*1/20;
  //
  //grex  = colourBoxX;
  //grey  = ;
  //grew = ;
  //greh = ;
  //quit button
  quitButtonX = displayWidth*1/20;
  quitButtonY  = displayHeight*0/20;
  quitButtonWidth = displayWidth*1/20;
  quitButtonHeight = displayHeight*1/20;
  //clear
  clearTextX = displayWidth*16.2/20;
  clearTextY = displayHeight*2/20;
  clearTextWidth = displayWidth*3/20;
  clearTextHeight = displayHeight*2/20;
  //circ tool
  circToolX = displayWidth*16.2/20;
  circToolY = displayHeight*8/20;
  circToolWidth = displayWidth*3/20;
  circToolHeight = displayHeight*1/20;
  //line tool
  lineToolX = displayWidth*16.2/20;
  lineToolY = displayHeight*7/20;
  lineToolWidth = displayWidth*3/20;
  lineToolHeight = displayHeight*1/20;
  //
  //toolBox
  toolBoxX = displayWidth*16.2/20;
  toolBoxY = displayHeight*5/20;
  toolBoxWidth = displayWidth*3/20;
  toolBoxHeight = displayHeight*5/20;
  //tile
  toolBoxTitleX = toolBoxX;
  toolBoxTitleY = toolBoxY;
  toolBoxTitleWidth = toolBoxWidth;
  toolBoxTitleHeight = displayHeight*2/20;
  //
  //colourBox
  colourBoxX = toolBoxX;
  colourBoxY = displayHeight*11/20;
  colourBoxWidth = displayWidth*3/20;
  colourBoxHeight = displayHeight*8/20;
  //title
  colourBoxTitleX = colourBoxX;
  colourBoxTitleY = colourBoxY;
  colourBoxTitleWidth = colourBoxWidth;
  colourBoxTitleHeight = displayHeight*2/20;
  //
  //music buttons
  playPauseX = drawingSurfaceX;
  playPauseY = displayHeight*17/20;
  playPauseWidth = displayWidth*2/20;
  playPauseHeight = displayHeight*2/20;
  //
  muteButtonX = playPauseX*7;
  muteButtonY = playPauseY;
  muteButtonWidth = playPauseWidth;
  muteButtonHeight = playPauseHeight;
  //
  stopButtonX = muteButtonX*2.13;
  stopButtonY = playPauseY;
  stopButtonWidth = playPauseWidth;
  stopButtonHeight = playPauseHeight;
  //
  musicMetaDataX = muteButtonX*1.9;
  musicMetaDataY = playPauseY;
  musicMetaDataWidth = displayWidth*0.2/20;
  musicMetaDataHeight = playPauseHeight;
  //
  musicInfoX = musicMetaDataX*1.6;
  musicInfoY = playPauseY;
  musicInfoWidth = displayWidth*6/20;
  musicInfoHeight = playPauseHeight;
}
