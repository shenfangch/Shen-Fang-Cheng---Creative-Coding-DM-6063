void setup(){
  size(800,500);
  float x1, y1, x2, y2, i;
  x1=random(0,800);//give it a range; need to be started from one point that should contain x and y
  y1=random(0,500);//give it a range//
  for (i=0; i<49; i++)/* for 50 times, loop: initialization; condition; increment  (more than one line use /*)
  uggu*/
  {
  x2=random(0,800);//end point that still need x and y//
  y2=random(0,500);//next will be added line function//
  line(x1,y1,x2,y2);//makes a line//
    x1=x2;//the way of its function//
    y1=y2;
}
}  
