
float[][] greyColors = new float[10][10];

void setup(){
  size(600, 600); 
}

void draw(){
  background(255); 

  for (int i = 0; i < 10; i+=10) {
    for (int j = 0; j < 10; j+=10) {
      greyColors[i][j]+=1;
      fill(greyColors[i][j]);
    
  
   if(greyColors[i][j] >= 255){
     greyColors[i][j] = 0;
   }
  }
  }
  ellipse(width/2, height/ 2, 100, 100); 
}
