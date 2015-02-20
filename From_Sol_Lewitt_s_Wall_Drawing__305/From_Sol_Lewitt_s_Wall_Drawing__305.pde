void setup(){
  size(800,500);
  int x1, y1, x2, y2, a, b, c, d, start, stop;
  x1=800;
  y1=0;
  x2=600;
  y2=500;
  line(x1,y1,x2,y2);
  //arc(600,200,300,400,PI+QUARTER_PI+HALF_PI,HALF_PI+QUARTER_PI);
  noFill();
  arc(550,200,330,500,-HALF_PI,random(PI,1.25*PI));//x,yis the certral point of the circle, cd is the range ,
}

