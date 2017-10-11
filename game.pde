void setup(){ 
  size(1000, 900, P3D);
}

int place = 10;
int place2 = 30;
int colorr = 145;
int size = 10;
int filled = 1;
int alive = 800;
String name1 = "MUSCLE \n TISSUE";
int strength1 = 0;
int progress = 0;

void draw() {
  //makes background image
  background(0);
  
  //makes mouse show x and y axis
  fill(255);
  textSize(10);
  text( "x: " + mouseX + " y: " + mouseY, mouseX, mouseY );

  //status bar text
  fill(255, 255, 255);
  textSize(10);
  text("BLOOD:", 10, 15);
  
  //empty status bar
  stroke(255, 255, 255);
  fill(255, 255, 255);
  rect(60, 5 , 100, 15);
  
  //status bar fill
  stroke(255, 255, 255);
  fill(255, 0, 51);
  rect(60, 5 , filled, 15);
  
  
  //progress bar
  fill(255, 255, 255);
  textSize(10);
  text("PROGRESS:", 200, 18);
  
  //empty progress bar
  stroke(255, 255, 255);
  fill(255, 255, 255);
  rect(260, 5 , 100, 15);
  
  //progress bar fill
  stroke(255, 255, 255);
  fill(71, 247, 115);
  rect(260, 5 , progress, 15);
  
  
  //left lung
  fill(216, 43, 92);
  rect(300, 300, 100, 400, 100, 0, 0, 1000);
  
  //right lung
  fill(216, 43, 92);
  rect(410, 300, 100, 400, 0, 100, 1000, 0);
  
  
  //random tissue
  fill(237, 218, 221);
  stroke(237, 218, 221);
  rect(alive, 300, 100, 200, 500, 30, 40.6, 10);

  //checks if go through lungs
  if(place > 300 && place < 500 && place2 > 302 && place2 < 700) {
    //does stuff if you go through the lungs
    colorr = 216; // changes color of blood cell(lighter red for pure blood)
    size += 1;

    //fills status up to 100%
    filled += 1;

    //titles lungs when pass through it
    fill(255, 255, 255);
    textSize(30);
    text("LUNGS", 350, 400);
  }
  
  //checks if go through "muscle tissue"
  if(place > 806 && place < 899 && place2 > 300 && place2 < 500){
    //drains some oxygen and strength of tissue
    filled -= .0001;
    size -= 1;
    strength1 += 1;
    
    if(strength1 >= 20){
    name1 = "✔";
    progress += 1;
    }
    
    
    //titles tissue when pass through it
    fill(0);
    textSize(15);
    text(name1, 820, 350);
  }
  
  //makes sure fill  & size stay at 100
  if(filled > 100){
  filled = 100;
  } else if (filled == 0){
  fill(255, 250, 0);
  textSize(150);
  text("GAME \n OVER", 300, 350);
  place = -10;
  place2 = -10;
  }
  
  if(size > 30){
  size = 30;
  } else if (size < 10){
  size = 10;
  }


    //blood cell
  fill(colorr, 6, 6);
  stroke(colorr, 6, 6);
  ellipse(place, place2, size, size);

  //moves cell for wasd keys pressed
  if (keyPressed) {
    if (key == 'd') {
      place = place + 3;
    } else if(key == 'a'){
      place = place - 3;
    } else if(key == 's'){
      place2 = place2 + 3;
    } else if(key == 'w'){
      place2 = place2 - 3;
    }
}
}