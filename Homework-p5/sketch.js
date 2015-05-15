
var x = 100;
var y = 100;
var xspeed = 10;
var yspeed = 10;




function preload(){
}

function setup() {
  //create our drawing canvas
  createCanvas(windowWidth, windowHeight);
   background(255);

}

function draw() 
{

background(255);
  //Move the ball according to its speed.
  x = x + xspeed;
  y = y + yspeed;

  //Check for bouncing.
  if ((x > width) || (x < 0)) {
    xspeed = xspeed * -1;
        playSound(); 

  }
  if ((y > height) || (y < 0)) {
    yspeed = yspeed * -1;

  }


  noStroke();
  fill(255,0,0);
  // Display the ball at the location (x,y).
  ellipse(x,y,50,50);



}