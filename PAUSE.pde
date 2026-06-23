void pause() {
  background(30);

  fill(255);
  textSize(70);
  text("PAUSED", width / 2, height / 2 - 60);

  textSize(30);
  text("Click to Resume", width / 2, height / 2 + 40);
}

void pauseClicks() {
  mode = GAME;
}
