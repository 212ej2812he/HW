void gameover() {
  background(255, 0, 0);

  fill(255);
  textSize(80);
  text("GAME OVER", 400, 280);

  textSize(40);
  text("Score: " + score, 400, 420);
  text("Highscore: " + highscore, 400, 480);

  textSize(30);
  text("Click to return to Intro", 400, 600);
}

void gameoverClicks() {
  resetGame();
  mode = INTRO;
}
