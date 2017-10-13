void setup(){
  size(1000, 900, P3D);
}

int place = 10;
int place2 = 30;
int colorr = 145;
int size = 10;
int filled = 1;
String name1 = "MUSCLE \n TISSUE";
int lungWidth = 100;

int alive = 800;
int aliveA = 800;
int aliveB = 899;

int aliveC = 600;
int aliveD = 600;
int aliveE = 678;

int aliveF = 200;
int aliveG = 200;
int aliveH = 400;

int aliveI = 600;
int aliveJ = 600;
int aliveK = 830;

int aliveL = 30;
int aliveM = 30;
int aliveN = 150;

int strength1 = 0;
int strength2 = 0;
int strength3 = 0;
int strength4 = 0;
int strength5 = 0;
int progress = 0;

void draw() {
  //makes background color
  background(0);

 //starts timer
  int times = millis();
  int timem = millis();
  int timeh = millis();
  int timer = times / 1000;
  textSize(15);
  fill(255);
  text("you have 30 seconds: " + timer + " s", 500 , 16);

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
  rect(300, 300, lungWidth, 400, 100, 0, 0, 1000);

  //right lung
  fill(216, 43, 92);
  rect(410, 300, lungWidth, 400, 0, 100, 1000, 0);

  /*===================
     MUSCLE TISSUES
  ===================*/

  //muscle tissue
  fill(237, 218, 221);
  stroke(237, 218, 221);
  rect(alive, 300, 100, 200, 500, 30, 40.6, 10);

  //muscle tissue 2
  fill(237, 218, 221);
  stroke(237, 218, 221);
  rect(aliveC, 450, 80, 60, 500, 10, 40.6, 50);

  //muscle tissue 3
  fill(237, 218, 221);
  stroke(237, 218, 221);
  rect(aliveF, 50, 200, 67.4, 500, 14.4, 40.6, 7);

  //muscle tissue 4
  fill(237, 218, 221);
  stroke(237, 218, 221);
  rect(aliveI, 120, 230, 93, 200, 300, 400.6, 100);

  //muscle tissue 5
  fill(237, 218, 221);
  stroke(237, 218, 221);
  rect(aliveL, 421, 120, 400, 400, 10, 15, 1000);

  //checks if go through lungs
  if(place > 300 && place < 500 && place2 > 302 && place2 < 700) {
    //does stuff if you go through the lungs
    colorr = 216; // changes color of blood cell(lighter red for pure blood)
    size += 1;

    //fills blood level up
    filled += 1;

    //contracts lungs slightly
    lungWidth = 90;

    //titles lungs when pass through it
    fill(255, 255, 255);
    textSize(30);
    text("LUNGS", 350, 400);
  } else {
    lungWidth = 100;
  }

  /*====================
   MUSCLE TISSUE CHECKS
  =====================*/


  //checks if go through "muscle tissue"
  if(place > aliveA && place < aliveB && place2 > 300 && place2 < 500){
    //drains some oxygen and strength of tissue
    filled -= 2;
    size -= 1;
    strength1 += 1;
    progress += 1;

    if(strength1 >= 20){
    alive = -800;
    aliveA = -800;
    aliveB = -899;
    }

    //titles tissue when pass through it
    fill(0);
    textSize(15);
    text(name1, 820, 350);
  }

  //checks if go through "muscle tissue 2"
  if(place > aliveD && place < aliveE && place2 > 450 && place2 < 510){
    //drains some oxygen and strength of tissue
    filled -= 2;
    size -= 1;
    strength2 += 1;
    progress += 1;

    if(strength2 >= 20){
    aliveC = -800;
    aliveD = -600;
    aliveE = -678;
    }

    //titles tissue when pass through it
    fill(0);
    textSize(15);
    text(name1, 615, 470);
  }

  //checks if go through "muscle tissue 3"
  if(place > aliveG && place < aliveH && place2 > 50 && place2 < 120){
    //drains some oxygen and strength of tissue
    filled -= 2;
    size -= 1;
    strength3 += 1;
    progress += 1;

    if(strength3 >= 20){
    aliveF = -800;
    aliveG = -800;
    aliveH = -899;
    }

    //titles tissue when pass through it
    fill(0);
    textSize(15);
    text(name1, 248, 70);
  }

  //checks if go through "muscle tissue 4"
  if(place > aliveJ && place < aliveK && place2 > 123 && place2 < 215){
    //drains some oxygen and strength of tissue
    filled -= 2;
    size -= 1;
    strength4 += 1;
    progress += 1;

    if(strength4 >= 20){
    aliveI = -600;
    aliveJ = -600;
    aliveK = -830;
    }

    //titles tissue when pass through it
    fill(0);
    textSize(15);
    text(name1, 675, 150);
  }

  //checks if go through "muscle tissue 5"
  if(place > aliveM && place < aliveN && place2 > 425 && place2 < 822){
    //drains some oxygen and strength of tissue
    filled -= 2;
    size -= 1;
    strength5 += 1;
    progress += 1;

    if(strength5 >= 20){
    aliveL = -300;
    aliveM = -300;
    aliveN = -1500;
    }

    //titles tissue when pass through it
    fill(0);
    textSize(15);
    text(name1, 50, 550);
  }



  //makes sure fill  & size stay at 100
  if(filled > 100){
  filled = 100;
  } else if (filled < 0){
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

  //game over timer
  if(timer >= 30){
    if(alive < 0 && aliveC < 0 && aliveF < 0 && aliveI < 0 && aliveL < 0){
      fill(92, 244, 66);
      textSize(150);
      text("you did \n your job!", 10, 350);
    } else {
      fill(255, 38, 0);
      textSize(150);
      text("GAME \n OVER", 300, 350);
    }
  }

  if(alive < 0 && aliveC < 0 && aliveF < 0 && aliveI < 0 && aliveL < 0){
    fill(92, 244, 66);
    textSize(150);
    text("you did \n your job!", 10, 350);
  }

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
