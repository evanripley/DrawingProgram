void musicSetup() {
  minim = new Minim(this); //
  song[currentSong] = minim.loadFile("musicdownload/freemp3.plus-ALESTORM - Magellan's Expedition (Official Video) _ Napalm Records-320.mp3");
  song[1] = minim.loadFile ("musicdownload/freemp3.plus-ALESTORM - P.A.R.T.Y. (Official Video) _ Napalm Records-320.mp3");
  song[2] = minim.loadFile ("musicdownload/freemp3.plus-ALESTORM - Shipwrecked _ Napalm Records-320.mp3");
  //
  for (int i=currentSong; i<song.length; i++) {
    songMetaData[i] = song[i].getMetaData();
  }//end meta data
  //
  songMetaData[0] = song[0].getMetaData();
  songMetaData[1] = song[1].getMetaData();
  songMetaData[2] = song[2].getMetaData();
  //
  //soundEffect[0] = minim.loadFile("musicdownload/Mouse_Click_4-fesliyanstudios.com.mp3");
  //
  println("Start of Console");
  println("Click the console to Finish Starting this program"); //See previous lesson for OS-level Button
  println("Title:", songMetaData[currentSong].title() );
}
//
void musicDraw() {
  if ( song[currentSong].isLooping() ) println("There are", song[currentSong].loopCount(), "loops left.");
  if ( song[currentSong].isPlaying() && !song[currentSong].isLooping() ) println("Play Once");
  //
  println("Computer Number of current song:", currentSong);
  println("Song Position", song[currentSong].position(), "Song Length", song[currentSong].length() );
  //
  fill(white);
  rect(musicMetaDataX, musicMetaDataY, musicMetaDataWidth, musicMetaDataHeight);
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, 10); //Change the number until it fits, largest font size
  text(songMetaData[currentSong].title(), musicMetaDataX, musicMetaDataY, musicMetaDataWidth, musicMetaDataHeight);
}
//
void musicKeyPressed() {
  //Only press a number for this code below
  if ( key=='1' || key=='9' ) { //Looping Functions
    if ( key == '1' ) println("Looping 1 time"); //Once
    if ( key == '9' ) println("Looping 9 times"); //Simulating Infinity
    String keystr = String.valueOf(key);
    println("Number of Repeats is", keystr);
    int num = int(keystr);
    song[currentSong].loop(num);
  }//End LOOP
  if ( key>='2' && key!='9') println("I do not loop that much! Try again.");
  //
  if ( key=='f' || key=='F' ) song[currentSong].skip(1000) ; // skip forward 1 second (1000 millisecond)
  if ( key=='r' || key=='R' ) song[currentSong].skip(-1000); 
  //

  //
  if (key == 'b' || key == 'B') { 
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1;
      }
      song[currentSong].play();
    } else {
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        currentSong = numberOfSongs - 1;
      } else {
        currentSong -= 1;
      }
    }
  } //end back button
  //
  //
  if (key=='n' || key=='N' ) {
    if (song[currentSong].isPlaying()) {
    } else {
      song[currentSong].rewind();
      // NEXT BUTTON ARRAY CATCH
      if ( currentSong >= song.length-1 ) { // error if greater than 2 "catch"
        currentSong -= currentSong; // restart playlist
      } else {
        currentSong++;
      }//END OF NEXT BUTTON ARRAY CATCH
    }
  }
}//end of next button (n)
//
//
//playPauseX, playPauseY, playPauseWidth, playPauseHeight
void musicMousePressed() {
  {
    if (mouseX>=playPauseX && mouseX<=playPauseX+playPauseWidth && mouseY>=playPauseY && mouseY<=playPauseY+playPauseHeight) {
      if ( song[currentSong].isPlaying() ) {
        song[currentSong].pause();
      } else if ( song[currentSong].position() >= song[currentSong].length()-song[currentSong].length()*1/5 ) { 
        song[currentSong].rewind();
        song[currentSong].play();
      } else {
        song[currentSong].play(); //Parameter is milli-seconds from start of audio file to start of playing
      }
    }
    //
    if (mouseX>=muteButtonX && mouseX<=muteButtonX+muteButtonWidth && mouseY>=muteButtonY && mouseY<=muteButtonY+muteButtonHeight ) { //MUTE Button
      if ( song[currentSong].isMuted() ) { 
        song[currentSong].unmute();
      } else {
        song[currentSong].mute();
      }
    }//End MUTE
  }
  //stopButtonX, stopButtonY, stopButtonWidth, stopButtonHeight
  if (mouseX>=stopButtonX && mouseX<=stopButtonX+stopButtonWidth && mouseY>=stopButtonY && mouseY<=stopButtonY+stopButtonHeight ) {//STOP Button
    if ( song[currentSong].isPlaying() ) {
      song[currentSong].pause();
      song[currentSong].rewind();
    } else {
      song[currentSong].rewind();
    }
  }//End STOP Button
}
