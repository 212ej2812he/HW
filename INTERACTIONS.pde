void mouseReleased() {
  if (mode == INTRO) {
    introClicks();
  } else if (mode == GAME) {
    gameClicks();
  } else if (mode == PAUSE) {
    pauseClicks();
  } else if (mode == GAMEOVER) {
    gameoverClicks();
  }
}

void keyPressed() {
  if (key == 'a' || key == 'A') {
    akey = true;
  }

  if (key == 'd' || key == 'D') {
    dkey = true;
  }

  // press P to pause
  if (mode == GAME && (key == 'p' || key == 'P')) {
    mode = PAUSE;
  }
}

void keyReleased() {
  if (key == 'a' || key == 'A') {
    akey = false;
  }

  if (key == 'd' || key == 'D') {
    dkey = false;
  }
}
