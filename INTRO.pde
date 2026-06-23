void intro() {
  background(173, 216, 230);

  fill(0);
  textSize(72);
  text("Clicker Game", 400, 250);

  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    strokeWeight(10);
    stroke(255, 0, 0);
    fill(255, 209, 209);
  } else {
    strokeWeight(2);
    stroke(0);
    fill(255);
  }

  rect(300, 400, 200, 100);

  fill(0);
  textSize(40);
  text("GAME", 400, 450);

  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650) {
    strokeWeight(10);
    stroke(255, 0, 0);
    fill(255, 209, 209);
  } else {
    strokeWeight(2);
    stroke(0);
    fill(255);
  }

  rect(300, 550, 200, 100);

  fill(0);
  textSize(35);
  text("OPTIONS", 400, 600);
}

void introClicks() {
  if (mouseX > 300 && mouseX < 500 && mouseY > 400 && mouseY < 500) {
    resetGame();
    mode = GAME;
  }

  if (mouseX > 300 && mouseX < 500 && mouseY > 550 && mouseY < 650) {
    mode = OPTIONS;
  }
}
