class Spaceship extends Floater{
  public Spaceship(){
    corners = 3;
    xCorners = new int[]{-10,-10,15};
    yCorners = new int []{-10,10,0};
    myColor = #ffffff;
    myCenterX = width/2;
    myCenterY = height/2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void setSpdX(double x){
    myXspeed = x;
  }
  public void setSpdY(double y){
    myYspeed = y;
  }
  public void hyperspace(){
    myCenterX = Math.random()*width;
    myCenterY = Math.random()*height;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = Math.random()*360;
  }
  public void setX(double x){
    myCenterX = x;
  }
  public void setY(double y){
    myCenterY = y;
  }
  double getX(){
    return myCenterX;
  }
  double getY(){
    return myCenterY;
  }
  double getXspeed(){
    return myXspeed;
  }
  double getYspeed(){
    return myYspeed;
  }
  double getPoint(){
    return myPointDirection;
  }
}
