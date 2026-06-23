void intro() {
  background(darkblue);

  a = a + 0.03;


  fill(white);
  textSize(70);
  text("breakout", width/2, 180);

  fill(green);
  textSize(30);
  text("click  to start", width/2, 650);
}

void introClicks() {
  resetGame();
  mode = GAME;
}
