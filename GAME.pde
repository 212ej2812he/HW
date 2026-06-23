void game() {
  background(darkblue);

  
  fill(white);
  textSize(30);
  text("Score: " + score, 100, 40);
  text("Lives: " + lives, 700, 40);

  textSize(18);
  text("Click to Pause", width/2, 40);


  if (akey == true) {
    px = px - 7;
  }

  if (dkey == true) {
    px = px + 7;
  }

  if (px < pd/2) {
    px = pd/2;
  }

  if (px > width - pd/2) {
    px = width - pd/2;
  }

  drawBricks();

  fill(white);
  circle(px, py, pd);

  fill(mango);
  circle(bx, by, bd);

  bx = bx + vx;
  by = by + vy;

  if (by < bd/2) {
    vy = vy * -1;
  }

  if (bx < bd/2 || bx > width - bd/2) {
    vx = vx * -1;
  }

  if (dist(bx, by, px, py) < bd/2 + pd/2 && vy > 0) {
    vx = (bx - px) / 10;
    vy = -abs(vy);

    by = py - pd/2 - bd/2;
  }

  if (by > height + bd/2) {
    lives = lives - 1;

    if (lives <= 0) {
      win = false;
      mode = GAMEOVER;
    } else {
      resetBall();
    }
  }

  if (allBricksGone() == true) {
    win = true;
    mode = GAMEOVER;
  }
}

void gameClicks() {
  mode = PAUSE;
}
