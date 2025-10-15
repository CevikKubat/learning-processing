float time = 0; 

void setup() {
  size(800, 800);
}

void draw(){
  background(0);
  noStroke();
  
  // Color start values
  int yCircleFill = 10;
  int xCircleFill = 25;
  int pCircleFill = 70;
  
  int yRectFill = 10;
  int xRectFill = 26;
  int pRectFill = 70;
  
  int yTriFill = 10;
  int xTriFill = 25;
  int pTriFill = 70;
  
  for (int i = 0; i < 200; i++) {
    // ---------------- Circles ----------------
    float radius = i * 3;
    float xCircle = width/2 + radius * cos(time + i * 0.1);
    float yCircle = height/2 + radius * sin(time + i * 0.1);
    float sizeCircle = 50 + i * 0.2; // optional growth of circle size

    fill(yCircleFill, xCircleFill, pCircleFill);
    circle(xCircle, yCircle, sizeCircle);
    
    // Update circle color
    yCircleFill += 2;
    xCircleFill -= 1;
    pCircleFill += 1;
    
    // ---------------- Rectangles ----------------
    float xRect = width/2 + radius * cos(time + i * 0.1 + PI/3); // slight phase shift
    float yRect = height/2 + radius * sin(time + i * 0.1 + PI/3);
    float sizeRect = 15 + i * 1.9;

    fill(yRectFill, xRectFill, pRectFill);
    rectMode(CENTER);
    rect(xRect, yRect, sizeRect, sizeRect);

    // Update rectangle color
    yRectFill += 1;
    xRectFill -= 0.2;
    pRectFill -= 1;
    
    // ---------------- Triangles ----------------
    float xTri = width/2 + radius * cos(time + i * 0.1 + PI/1.5); // another phase shift
    float yTri = height/2 + radius * sin(time + i * 0.1 + PI/1.5);
    float sizeTri = 70 + i * 0.8;

    fill(yTriFill, xTriFill, pTriFill);
    triangle(
      xTri, yTri - sizeTri/2,
      xTri - sizeTri/2, yTri + sizeTri/2,
      xTri + sizeTri/2, yTri + sizeTri/2
    );

    // Update triangle color
    yTriFill -= 1;
    xTriFill += 0.2;
    pTriFill += 2;
  }
  
  time += 0.10;
}
