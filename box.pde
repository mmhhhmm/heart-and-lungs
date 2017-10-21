void setup(){
  size(500, 500, P3D);
}

int r = int(random(500));
int r2 = int(random(500));
int r3 = int(random(500));
int r4 = int(random(500));



void makeCube(int x, int y, int z){
  translate(x, y, z);
  noStroke();
  int c = x + y - z;
  fill(255, c, c);
  rotateX((mouseY / 40.0));
  rotateY((mouseX / 40.0));
  box(60);
}


void draw(){
  background(#ffffff);
  pointLight(251, 255, 160, 500, 500, 500);

  makeCube((-1 * r2), r, 0);
  makeCube(r3, r, 0);
  makeCube(r2, r, 0);
  makeCube(r2, r, 0);
  makeCube(r2, r3, 0);
  makeCube(r4, r, 0);
  makeCube((-1 * r2), r, 0);
  makeCube(r2, r, 0);
  makeCube(r2, r3, 0);
  makeCube(r2, r, 0);
  makeCube(r2, r, 0);
  makeCube(r, r, 0);
  makeCube((-1 * r2), r, 0);
  makeCube(r2, r, 0);
  makeCube((-1 * r2), r, 0);
  makeCube((-1 * r3), r4, 0);
  makeCube((-1 * r2), r, 0);
  makeCube(r2, r, 0);
  makeCube((-1 * r), r3, 0);
  makeCube(r2, r, 0);



}
