void gameover() {
  background(purple);

  a = a + 0.03;

  textSize(45);

  if (win == true) {
    fill(green);
    text("YOU WON!", width/2, 330);
  } else {
    fill(mango);
    text("YOU LOST!", width/2, 330);
  }

  fill(white);
  textSize(30);
  text("Final Score: " + score, width/2, 430);
}

void gameoverClicks() {
  resetGame();
  mode = INTRO;
}
