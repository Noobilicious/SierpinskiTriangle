public void setup()
{
  size(400, 400);
}
public void draw()
{
  sierpinski(0, 0, 400);

}
public void mousePressed()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 15){
    fill((int)(255*Math.random()), (int)(255*Math.random()), (int)(255*Math.random()));
    triangle(x, y, x + len, y, x + len/2, y + len);
  }
  else{
     fill((int)(255*Math.random()), (int)(255*Math.random()), (int)(255*Math.random()));
     sierpinski(x, y, len/2);
     sierpinski(x + len/2, y, len/2);
     sierpinski(x + len/4, y + len/2, len/2);
  }
}