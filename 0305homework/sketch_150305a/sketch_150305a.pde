
int cx, cy;
float secondsRadius;
float minutesRadius;
float hoursRadius;
float clockDiameter;
 
void setup() {
//  size(640, 360);
  size(500, 375);
 
  stroke(255);
   
  int radius = min(width, height) / 2;
  secondsRadius = radius * 0.72;
  minutesRadius = radius * 0.60;
  hoursRadius = radius * 0.50;
  clockDiameter = radius * 1.8;
   

}
 
void draw() {
   noCursor();//hide the cursor
  cx = mouseX;
  cy = mouseY;
  background(255,255,255); //my favorite blue   
  // Draw the clock background
//  fill(80);
  fill(145,144,255,128); //transparent
  noStroke();
  ellipse(cx, cy, clockDiameter, clockDiameter);
   
  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
   
  // Draw the hands of the clock
  stroke(255);
  strokeWeight(1);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(2);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(4);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
   
  // Draw the minute ticks
  strokeWeight(2);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) {
    float angle = radians(a);
    float x = cx + cos(angle) * secondsRadius;
    float y = cy + sin(angle) * secondsRadius;
    vertex(x, y);
  }
  endShape();
 
}


void mouseMoved() {

   background(145,144,255); //my favorite 
       cx = mouseX;
  cy = mouseY;
  background(0);//black
  background(145,144,255); //my favorite blue   
  // Draw the clock background
//  fill(80);
  fill(145,144,255,128); //transparent
  noStroke();
  ellipse(cx, cy, clockDiameter, clockDiameter);
   
  // Angles for sin() and cos() start at 3 o'clock;
  // subtract HALF_PI to make them start at the top
  float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;
  float m = map(minute() + norm(second(), 0, 60), 0, 60, 0, TWO_PI) - HALF_PI;
  float h = map(hour() + norm(minute(), 0, 60), 0, 24, 0, TWO_PI * 2) - HALF_PI;
   
  // Draw the hands of the clock
  stroke(255);
  strokeWeight(1);
  line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
  strokeWeight(2);
  line(cx, cy, cx + cos(m) * minutesRadius, cy + sin(m) * minutesRadius);
  strokeWeight(4);
  line(cx, cy, cx + cos(h) * hoursRadius, cy + sin(h) * hoursRadius);
    strokeWeight(1);
  stroke(0,0,0,255); //transparent
  line(cx,cy,width,0);
  line(cx,cy,0,0);
  line(cx,cy,0,height);
  line(cx,cy,width,height);
  // Draw the minute ticks
  strokeWeight(2);
  beginShape(POINTS);
  for (int a = 0; a < 360; a+=6) {

        float angle = radians(random(500));
    float x = cx + cos(angle) * random(500);
    float y = cy + sin(angle) * random(500);
    vertex(x, y);
  }
  endShape();
}




