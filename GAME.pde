void game() {
  background(0);

  fill(255);
  textSize(60);
  text(leftScore, width / 2 - 100, 60);
  text(rightScore, width / 2 + 100, 60);

  textSize(20);
  if (onePlayer == true) {
    text("1 Player Mode", width / 2, 25);
  } else {
    text("2 Player Mode", width / 2, 25);
  }

  fill(255);
  circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  circle(ballx, bally, balld);


  if (wkey == true) {
    lefty = lefty - 6;
  }

  if (skey == true) {
    lefty = lefty + 6;
  }

  if (onePlayer == false) {
    if (upkey == true) {
      righty = righty - 6;
    }

    if (downkey == true) {
      righty = righty + 6;
    }
  } else {

    if (bally < righty - 10) {
      righty = righty - 4.5;
    }

    if (bally > righty + 10) {
      righty = righty + 4.5;
    }
  }


  if (lefty < leftd / 2) {
    lefty = leftd / 2;
  }

  if (lefty > height - leftd / 2) {
    lefty = height - leftd / 2;
  }

  if (righty < rightd / 2) {
    righty = rightd / 2;
  }

  if (righty > height - rightd / 2) {
    righty = height - rightd / 2;
  }


  if (timer > 0) {
    timer = timer - 1;

    fill(255);
    textSize(30);
    text("Get Ready", width / 2, height / 2 - 80);

    return;
  }


  ballx = ballx + ballvx;
  bally = bally + ballvy;


  if (bally < balld / 2 || bally > height - balld / 2) {
    ballvy = ballvy * -1;
  }


  if (dist(ballx, bally, leftx, lefty) < balld / 2 + leftd / 2 && ballvx < 0) {
    ballvx = abs(ballvx);

    float difference = bally - lefty;
    ballvy = difference * 0.08;
  }


  if (dist(ballx, bally, rightx, righty) < balld / 2 + rightd / 2 && ballvx > 0) {
    ballvx = -abs(ballvx);

    float difference = bally - righty;
    ballvy = difference * 0.08;
  }


  if (ballx < -balld / 2) {
    rightScore = rightScore + 1;

    if (rightScore >= 3) {
      mode = GAMEOVER;
    } else {
      resetBall();
    }
  }

  if (ballx > width + balld / 2) {
    leftScore = leftScore + 1;

    if (leftScore >= 3) {
      mode = GAMEOVER;
    } else {
      resetBall();
    }
  }
}

void gameClicks() {
  mode = PAUSE;
}
