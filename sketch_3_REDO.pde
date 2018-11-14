color bgColors [] = new color[4]; 
int n;
float r; 
void setup(){
  size(600, 600); 
  
  for(int i = 0; i<4; i++){
    bgColors[i] = color(random(0,255), random(0,255), random(0,255)); 
  }
}

void draw(){
  

  if(r <.25){
    n = 0; 
  }else if (r >= .25 && r<.5){
    n = 1; 
  }else if (r>= .5 && r<.75){
    n = 2;
  } else if (r>=.75){
    n = 3;
  }
  background(bgColors[n]); 
  text("back ground # : " + n, 100, 100); 
}

void mousePressed(){
  r = random(0,1); 
  ellipse(mouseX, mouseY, 50, 50); 
}
