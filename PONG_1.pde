int mode;

final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

float leftx, lefty, leftd;
float rightx, righty, rightd;
float ballx, bally, balld;

float ballvx, ballvy;

int leftScore;
int rightScore;

boolean onePlayer;

boolean wkey, skey;
boolean upkey, downkey;

int timer;

void setup() {
  size(800, 600);
  textAlign(CENTER, CENTER);

  mode = INTRO;

  leftd = 120;
  rightd = 120;
  balld = 30;

  resetMatch();
}

void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}

void resetMatch() {
  leftScore = 0;
  rightScore = 0;

  resetPositions();
  resetBall();
}

void resetPositions() {
  leftx = 0;
  lefty = height / 2;

  rightx = width;
  righty = height / 2;
}

void resetBall() {
  ballx = width / 2;
  bally = height / 2;

  ballvx = random(4, 6);

  if (random(1) < 0.5) {
    ballvx = ballvx * -1;
  }

  ballvy = random(-4, 4);

  if (abs(ballvy) < 1) {
    ballvy = 2;
  }

  timer = 100;
}
