void gameover() {
  background(120, 0, 0);

  fill(255);
  textSize(70);
  text("GAME OVER", width / 2, 150);

  textSize(45);

  if (leftScore >= 3) {
    text("Left Player Wins!", width / 2, 280);
  } else if (rightScore >= 3) {
    text("Right Player Wins!", width / 2, 280);
  }

  textSize(35);
  text(leftScore + " - " + rightScore, width / 2, 370);
}

void gameoverClicks() {
  resetMatch();
  mode = INTRO;
}
