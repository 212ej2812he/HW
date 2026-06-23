void pause() {
  background(0);

  fill(255);
  textSize(80);
  text("PAUSED", 400, 300);

  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    fill(255, 209, 209);
  } else {
    fill(255);
  }

  stroke(0);
  strokeWeight(3);
  rect(300, 500, 200, 100);

  fill(0);
  textSize(35);
  text("RETURN", 400, 550);
}

void pauseClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 500 && mouseY < 600) {
    mode = GAME;
  }
}
