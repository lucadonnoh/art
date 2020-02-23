void setup()
{
  size(1000,1000);
  blendMode(DIFFERENCE);
  noStroke();
  fill(240);
}
float bgcolor = 250;
float off = 800;
float start = PI/1.7;
float deg = start;
float degoff = 0.0001;
void draw()
{
  bgcolor = map(dist(sin(deg)*off, cos(deg)*off, sin(deg*0.68+1)*off, cos(deg*0.68+1)*off),0,105,14,240);

  background(bgcolor);
  translate(500,1000);
  circle(sin(deg)*off, cos(deg)*off, 100);
  circle(sin(deg*0.6814+1)*off, cos(deg*0.6814+1)*off, 110);
  if(deg >= 2*PI-start) deg = start;
  deg += 0.007-degoff;
  if(deg <= PI) degoff += 0.00001801; else degoff -= 0.00001801;

  square(-500,-500,2000);
  //saveFrame("out/kiss2_####.png");
}
