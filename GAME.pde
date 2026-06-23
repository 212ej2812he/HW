void game() {
  background(0, 255, 0);

 
  stroke(0);
  strokeWeight(3);
  fill(255);
  rect(650, 20, 120, 60);

  fill(0);
  textSize(25);
  text("PAUSE", 710, 50);

  
  fill(0);
  textSize(30);
  text("Score: " + score, 100, 40);
  text("Lives: " + lives, 100, 80);

  
  drawTarget(x, y, d);

 
  x = x + vx;
  y = y + vy;

 
  if (x < d/2 || x > width - d/2) {
    vx = vx * -1;
  }

  if (y < d/2 || y > height - d/2) {
    vy = vy * -1;
  }

  if (lives <= 0) {
    if (score > highscore) {
      highscore = score;
    }

    mode = GAMEOVER;
  }
}

void gameClicks() {
  
  if (mouseX > 650 && mouseX < 770 && mouseY > 20 && mouseY < 80) {
    mode = PAUSE;
  } else if (dist(mouseX, mouseY, x, y) < d/2) {
    score = score + 1;

    vx = vx * 1.15;
    vy = vy * 1.15;
  } else {
    lives = lives - 1;
  }
}
