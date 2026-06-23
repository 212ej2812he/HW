void intro() {
  background(20, 60, 120);

  fill(255);
  textSize(70);
  text("PONG GAME", width / 2, 120);



  if (mouseX > 250 && mouseX < 550 && mouseY > 300 && mouseY < 380) {
    fill(255, 220, 120);
  } else {
    fill(255);
  }

  stroke(0);
  strokeWeight(3);
  rect(250, 300, 300, 80);

  fill(0);
  textSize(35);
  text("1 PLAYER", width / 2, 340);

  if (mouseX > 250 && mouseX < 550 && mouseY > 420 && mouseY < 500) {
    fill(255, 220, 120);
  } else {
    fill(255);
  }

  stroke(0);
  strokeWeight(3);
  rect(250, 420, 300, 80);

  fill(0);
  textSize(35);
  text("2 PLAYER", width / 2, 460);
}

void introClicks() {
  if (mouseX > 250 && mouseX < 550 && mouseY > 300 && mouseY < 380) {
    onePlayer = true;
    resetMatch();
    mode = GAME;
  }

  if (mouseX > 250 && mouseX < 550 && mouseY > 420 && mouseY < 500) {
    onePlayer = false;
    resetMatch();
    mode = GAME;
  }
}
