class Star //note that this class does NOT extend Floater
{
  private int myX, myY, col;
  public Star(){
    myX = (int)(Math.random()*width);
    myY = (int)(Math.random()*height);
    col = color((float)(Math.random()*256), (float)(Math.random()*256), (float)(Math.random()*256),150);
  }
  public void show(){
    noStroke();
    fill(col);
    ellipse(myX, myY, 10, 10);
  }
}
