Ball b1;
Ball b2;
Ball b3;
void setup()
{
  size(640,640,P2D);
  b1=new Ball(0,0,255,0,0);
  b2=new Ball(320,430,0,255,0);
  b3= new Ball(620,300,0,0,255);
  
}
void draw()
{
  background(255);
  b1.move();
  b1.display();
  b1.wall();
  b2.move();
  b2.display();
  b2.wall();
  b3.move();
  b3.display();
  b3.wall();
  b1.collision(b2);
  b1.collision(b3);
  b2.collision(b3);
  
}
