class Asteroid extends Floater{
  public double rot;
  public Asteroid(){
    corners = 8;
    xCorners = new int[]{-20,-10,0,10,20,10,0,-10,-20};
    yCorners = new int[]{0,-15,-20,-15,0,15,20,15,0};
    myColor = #cccccc;
    myCenterX = 0;
    myCenterY = 0;
    myXspeed = (int)(Math.random()*4+1);
    myYspeed = (int)(Math.random()*4+1);
    myPointDirection = 0;
    rot = (int)(Math.random()*3+2);
  }
  public void move(){
     turn(rot);
     super.move();
    }
  public void setX(double x){
    myCenterX = x;
  }
  public void setY(double y){
    myCenterY = y;
  }
  double getCenterX(){
    return myCenterX;
  }
  double getCenterY(){
    return myCenterY;
  }
}
