// palette of colors
color cream        = #FCFBE3;
color lightBrown   = #DDCAAA;
color mediumBrown  = #BC8542;
color darkBrown    = #9F642C;
color darkestBrown = #6E3722;

color redColor     = #E63946;
color orangeColor  = #F77F00;
color yellowColor  = #FCCA46;
color greenColor   = #2A9D8F;
color blueColor    = #457B9D;
color purpleColor  = #9B5DE5;
color pinkColor    = #FF70A6;

color blackColor   = #000000;
color white        = #FFFFFF;

color selectedColor;

int brushSize;

int canvasX = 220;
int canvasY = 20;
int canvasW = 560;
int canvasH = 560;

void setup() {
  size(800, 600);
  textAlign(CENTER, CENTER);

  selectedColor = blackColor;
  brushSize = 10;

  background(255);

  fill(white);
  stroke(0);
  strokeWeight(5);
  rect(canvasX, canvasY, canvasW, canvasH);
}

void draw() {
  noStroke();
  fill(0);
  rect(0, 0, 200, height);

  drawColorButtons();
  drawSizeButtons();
  drawSaveClearButtons();
  drawIndicator();

  noFill();
  stroke(darkestBrown);
  strokeWeight(5);
  rect(canvasX, canvasY, canvasW, canvasH);
}

void drawColorButtons() {
  fill(white);
  textSize(24);
  text("COLORS", 100, 30);

  tactile(45, 80, 25);
  fill(redColor);
  circle(45, 80, 50);
  tactile(100, 80, 25);
  fill(orangeColor);
  circle(100, 80, 50);
  tactile(155, 80, 25);
  fill(yellowColor);
  circle(155, 80, 50);
  tactile(45, 140, 25);
  fill(greenColor);
  circle(45, 140, 50);
  tactile(100, 140, 25);
  fill(blueColor);
  circle(100, 140, 50);
  tactile(155, 140, 25);
  fill(purpleColor);
  circle(155, 140, 50);
  tactile(45, 200, 25);
  fill(pinkColor);
  circle(45, 200, 50);
  tactile(100, 200, 25);
  fill(lightBrown);
  circle(100, 200, 50);
  tactile(155, 200, 25);
  fill(mediumBrown);
  circle(155, 200, 50);
  tactile(45, 260, 25);
  fill(darkBrown);
  circle(45, 260, 50);
  tactile(100, 260, 25);
  fill(darkestBrown);
  circle(100, 260, 50);
  tactile(155, 260, 25);
  fill(blackColor);
  circle(155, 260, 50);
  tactile(100, 325, 25);
  fill(white);
  circle(100, 325, 50);
  fill(darkestBrown);
  textSize(16);
  text("ERASER", 100, 365);
}

void drawSizeButtons() {
  fill(255);
  textSize(24);
  text("SIZE", 100, 405);

  tactile(55, 455, 25);
  fill(255);
  circle(45, 455, 10);

  tactile(100, 455, 25);
  fill(255);
  circle(100, 455, 20);

  tactile(155, 455, 25);
  fill(255);
  circle(155, 455, 35);
}

void drawSaveClearButtons() {
 
  tactileRect(25, 500, 70,40);
  fill(255);
  rect(25, 500, 70, 40);

  fill(0);
  textSize(18);
  text("SAVE", 60, 520);


  tactileRect(105, 500, 70,40);
  fill(255);
  rect(105, 500, 70, 40);

  fill(0);
  text("CLEAR", 140, 520);
}

void drawIndicator() {
  fill(255);
  textSize(16);
  text("Selected", 100, 565);

  stroke(255);
  strokeWeight(3);
  fill(selectedColor);
  rect(70, 575, 60, 20);
}

void tactile(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    stroke(white);
  } else {
    stroke(darkestBrown);
  }

  strokeWeight(5);
}

void tactileRect(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w &&
      mouseY > y && mouseY < y + h) {
    stroke(white);
  } else {
    stroke(0);
  }

  strokeWeight(4);
}

void mouseDragged() {
  if (mouseX > canvasX && mouseX < canvasX + canvasW &&
      mouseY > canvasY && mouseY < canvasY + canvasH &&
      pmouseX > canvasX && pmouseX < canvasX + canvasW &&
      pmouseY > canvasY && pmouseY < canvasY + canvasH) {

    stroke(selectedColor);
    strokeWeight(brushSize);
    line(pmouseX, pmouseY, mouseX, mouseY);
  }
}

void mousePressed() {
  if (mouseX > canvasX && mouseX < canvasX + canvasW &&
      mouseY > canvasY && mouseY < canvasY + canvasH) {

    noStroke();
    fill(selectedColor);
    circle(mouseX, mouseY, brushSize);
  }
}

void mouseReleased() {

  if (dist(45, 80, mouseX, mouseY) < 25) {
    selectedColor = redColor;
  }

  if (dist(100, 80, mouseX, mouseY) < 25) {
    selectedColor = orangeColor;
  }

  if (dist(155, 80, mouseX, mouseY) < 25) {
    selectedColor = yellowColor;
  }

  if (dist(45, 140, mouseX, mouseY) < 25) {
    selectedColor = greenColor;
  }

  if (dist(100, 140, mouseX, mouseY) < 25) {
    selectedColor = blueColor;
  }

  if (dist(155, 140, mouseX, mouseY) < 25) {
    selectedColor = purpleColor;
  }

  if (dist(45, 200, mouseX, mouseY) < 25) {
    selectedColor = pinkColor;
  }

  if (dist(100, 200, mouseX, mouseY) < 25) {
    selectedColor = lightBrown;
  }

  if (dist(155, 200, mouseX, mouseY) < 25) {
    selectedColor = mediumBrown;
  }

  if (dist(45, 260, mouseX, mouseY) < 25) {
    selectedColor = darkBrown;
  }

  if (dist(100, 260, mouseX, mouseY) < 25) {
    selectedColor = darkestBrown;
  }

  if (dist(155, 260, mouseX, mouseY) < 25) {
    selectedColor = blackColor;
  }

  
  if (dist(100, 325, mouseX, mouseY) < 25) {
    selectedColor = white;
  }


  if (dist(45, 455, mouseX, mouseY) < 25) {
    brushSize = 5;
  }

  if (dist(100, 455, mouseX, mouseY) < 25) {
    brushSize = 15;
  }

  if (dist(155, 455, mouseX, mouseY) < 25) {
    brushSize = 30;
  }

  if (mouseX > 25 && mouseX < 95 &&
      mouseY > 500 && mouseY < 540) {
    save("myDrawing.png");
    println("Saved");
  }

  if (mouseX > 105 && mouseX < 175 &&
      mouseY > 500 && mouseY < 540) {
    fill(white);
    stroke(darkestBrown);
    strokeWeight(5);
    rect(canvasX, canvasY, canvasW, canvasH);
  }
}
