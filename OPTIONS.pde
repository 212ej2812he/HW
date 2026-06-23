void options() {
  background(220);

  fill(0);
  textSize(60);
  text("Options", 400, 80);

  
  if (mouseX > 100 && mouseX < 300 && mouseY > 160 && mouseY < 260) {
    fill(255, 209, 209);
  } else {
    fill(255);
  }

  stroke(0);
  strokeWeight(3);
  rect(100, 160, 200, 100);

  fill(0);
  textSize(30);
  text("CIRCLE", 200, 210);

  
  if (mouseX > 500 && mouseX < 700 && mouseY > 160 && mouseY < 260) {
    fill(255, 209, 209);
  } else {
    fill(255);
  }

  rect(500, 160, 200, 100);

  fill(0);
  text("SQUARE", 600, 210);

  
  
  
  
  
  fill(0);
  textSize(30);
  text("Target Size: " + int(d), 400, 330);

  stroke(0);
  strokeWeight(5);
  line(200, 400, 600, 400);

  float sliderX = map(d, 30, 150, 200, 600);

  fill(255, 0, 0);
  strokeWeight(2);
  circle(sliderX, 400, 30);

  
  fill(0);
  textSize(35);
  text("Preview", 400, 500);

  drawTarget(400, 600, d);

 
  if (mouseX > 300 && mouseX < 500 && mouseY > 700 && mouseY < 770) {
    fill(255, 209, 209);
  } else {
    fill(255);
  }

  stroke(0);
  strokeWeight(3);
  rect(300, 700, 200, 70);

  fill(0);
  textSize(35);
  text("BACK", 400, 735);
}

void optionsClicks() {
  if (mouseX > 100 && mouseX < 300 && mouseY > 160 && mouseY < 260) {
    targetType = 0;
  }

  if (mouseX > 500 && mouseX < 700 && mouseY > 160 && mouseY < 260) {
    targetType = 1;
  }

  if (mouseX > 200 && mouseX < 600 && mouseY > 370 && mouseY < 430) {
    d = map(mouseX, 200, 600, 30, 150);
  }

  if (mouseX > 300 && mouseX < 500 && mouseY > 700 && mouseY < 770) {
    mode = INTRO;
  }
}
