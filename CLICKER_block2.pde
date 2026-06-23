int mode; 

final int INTRO = 0;
final int GAME = 1;
final int PAUSE = 2;
final int GAMEOVER = 3;
final int OPTIONS = 4;

float x, y, d;
float vx, vy;

int score;
int lives;
int highscore;

int targetType;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);

  d = 50;
  targetType = 0;
  highscore = 0;

  resetGame();
  mode = INTRO;
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
  } else if (mode == OPTIONS) {
    options();
  } else {
    println("Error: Mode = " + mode);
  }
}

void resetGame() {
  score = 0;
  lives = 3;

  x = width/2;
  y = height/2;

  vx = random(-5, 5);
  vy = random(-5, 5);

  if (abs(vx) < 2) {
    vx = 3;
  }

  if (abs(vy) < 2) {
    vy = 3;
  }
}

void drawTarget(float tx, float ty, float td) {
  stroke(0);
  strokeWeight(5);

  if (targetType == 0) {
    fill(255);
    circle(tx, ty, td);
  } else {
    fill(255, 200, 0);
    rectMode(CENTER);
    square(tx, ty, td);
    rectMode(CORNER);
  }
}
