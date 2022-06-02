void musicSetup() {
  minim = new Minim(this);
  song1 = minim.loadFile("musicdownload/freemp3.plus-ALESTORM - P.A.R.T.Y. (Official Video) _ Napalm Records-320.mp3");
}
//
void musicDraw() {
  if ( song1.isLooping() ) println("There are", song1.loopCount(), "loops left.");
  if ( song1.isPlaying() && !song1.isLooping() ) println("Play Once");
  //
  println("Song Position", song1.position(), "Song Length", song1.length() );
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
    song1.loop(num);
  }//End LOOP
  if ( key>='2' && key!='9') println("I do not loop that much! Try again.");
  //
  //Alternate Play-Pause Button
  if ( key=='p' || key=='P' ) {
    if ( song1.isPlaying() ) {
      song1.pause();
    } else {
      song1.play(); //Parameter is milli-seconds from start of audio file to start of playing
    }
  }//End PLAY-PAUSE Button
  //
  /* Previous Play Button & Loop Button
   int loopNum = 2; //Local Variables plays once and loops twice
   if ( key=='l' || key=='L' ) song1.loop(loopNum); //Parameter is number of repeats;
   */
  //
  if ( key=='m' || key=='M' ) { //MUTE Button
    if ( song1.isMuted() ) { 
      song1.unmute();
    } else {
      song1.mute();
    }
  }//End MUTE
  //
  if ( key=='s' || key=='S' ) {//STOP Button
    if ( song1.isPlaying() ) {
      song1.pause();
      song1.rewind();
    } else {
      song1.rewind();
    }
  }//End STOP Button
}
