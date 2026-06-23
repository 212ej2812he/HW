void resetGame() {
  score = 0;
  lives = 3;
  win = false;

  px = width/2;
  py = height - 40;

  resetBall();
  setupBricks();
}

void resetBall() {
  bx = width/2;
  by = height - 180;

  vx = random(-4, 4);
  vy = -5;

  if (abs(vx) < 1) {
    vx = 2;
  }
}

void setupBricks() {
  int i = 0;

  int startX = 100;
  int startY = 110;
  int gapX = 100;
  int gapY = 80;

  for (int row = 0; row < brickRows; row++) {
    for (int col = 0; col < brickCols; col++) {
      x[i] = startX + col * gapX;
      y[i] = startY + row * gapY;
      alive[i] = true;
      i++;
    }
  }
}

void drawBricks() {
  for (int i = 0; i < x.length; i++) {
    if (alive[i] == true) {
      int row = i / brickCols;

      if (row == 0) {
        fill(mango);
      } else if (row == 1) {
        fill(orange);
      } else if (row == 2) {
        fill(green);
      } else {
        fill(purple);
      }

      circle(x[i], y[i], brickd);

      // ball hits brick
      if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) {
        alive[i] = false;
        score = score + 1;

        vx = (bx - x[i]) / 8;
        vy = (by - y[i]) / 8;

        if (abs(vx) < 1) {
          vx = 2;
        }

        if (abs(vy) < 1) {
          vy = -2;
        }
      }
    }
  }
}

boolean allBricksGone() {
  for (int i = 0; i < alive.length; i++) {
    if (alive[i] == true) {
      return false;
    }
  }

  return true;
}
