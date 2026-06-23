color darkblue = #272D4D; 
color purple = #B83564;
color mango = #FF6A5A;
color orange = #FFB350;
color green = #83B8AA;
color white = #FFFFFF;
color black = #000000;

int mode;

final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;


float a;


float bx, by, bd;
float vx, vy;

float px, py, pd;


boolean akey, dkey;


int score;
int lives;
boolean win;


int[] x;
int[] y;
boolean[] alive;

int brickd;
int brickRows;
int brickCols;

void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  noStroke();

  mode = INTRO;

  bd = 20;
  pd = 100;

  brickd = 55;
  brickRows = 4;
  brickCols = 7;

  x = new int[brickRows * brickCols];
  y = new int[brickRows * brickCols];
  alive = new boolean[brickRows * brickCols];

  resetGame();
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
