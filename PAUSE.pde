void pause() {
  background(black);

  a = a + 0.04;


  fill(white);
  textSize(80);
  text("PAUSED", width/2, height/2 - 60);

  fill(green);
  textSize(30);
}

void pauseClicks() {
  mode = GAME;
}
