int size = 60; 
int num; 
boolean [][] clicked; 
color [][] c; 

void setup() {
  size (600, 600); 
  background(0); 
  noStroke(); 
  smooth(); 

  num = width/size; 

  clicked = new boolean[num][num]; 
  c = new color[num][num];

  for (int i = 0; i< num; i++) {
    for (int j = 0; j<num; j ++) {
      clicked[i][j] = false; 
      c[i][j] = color(random(0, 255), random(0, 255), random(0, 255));
      println(c[i][j]);
    }
  }
}

void draw() {
  for (int i = 0; i<num; i++) {
    for (int j = 0; j<num; j++) {

      if (clicked[i][j] == false) {

        if (mousePressed) {

          if (dist(mouseX, mouseY, i*size + size/2, j*size+ size/2)<size/2) {
            fill(c[i][j]);
          }else{
          fill(255);
        }
      }
      ellipse(i*size + (size/2), j*size + (size/2), size, size);
    }
  }
}
}
