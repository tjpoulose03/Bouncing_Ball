class Ball
{
  float x;
  float y;
  float xspeed=5;
  float yspeed=3;
  float col1;
  float col2;
  float col3;
  Ball(float x1, float y1, float colo1, float colo2, float colo3)
  {
    col1=colo1;
    col2=colo2;
    col3=colo3;
    x=x1;
    y=y1;
  }
  void move()
  {
    x=x+xspeed;
    y=y+yspeed;
  }
  void display()
  {
    fill(col1,col2,col3);
    ellipse(x,y,100,100);
  }
  void wall()
  {
    if(x>width||x<0)
    xspeed=-xspeed;
    if(y>height||y<0)
    yspeed=-yspeed;
  }
  void collision(Ball other)
  {
    if(dist(x,y,other.x,other.y)<100)
    {  xspeed=-xspeed;
       yspeed=-yspeed;
       other.xspeed=-other.xspeed;
       other.yspeed=-other.yspeed;
       col1=random(0,255);
       col2=random(0,255);
       col3=random(0,255);
       other.col1=random(0,255);
       other.col2=random(0,255);
       other.col3=random(0,255);
    }
  }
  
}
