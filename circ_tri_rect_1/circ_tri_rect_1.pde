float time = 0; 

void setup() {
  size(800, 800);
}

void draw(){
  background(0);
  noStroke();
  
  int yCircleFill = 10;
  int xCircleFill = 25;
  int pCircleFill = 70;
  
  float yCircle = 0;
  float xCircle = 0;
  float pCircle = -250;
  
  for (int i = 0; i < 200; i++) {
    // Automate circle position
    yCircle += 2;
    
    // Stay in line before changing position
    if (i <= 5){
      xCircle = 200;
    }
    
    float radius = i * 3;
    xCircle = width/2 + radius * cos(time + i * 0.1);
    yCircle = height/2 + radius * sin(time + i * 0.1);


    pCircle += 3;
    
    // Automate circle colour
    yCircleFill += 3;
    xCircleFill -= 1;
    pCircleFill += 1;
    
    fill(yCircleFill, xCircleFill, pCircleFill);
    circle(yCircle, xCircle, pCircle);
  }
  time += 0.12;
}
