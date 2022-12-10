class Bullet extends Floater{
  public Bullet(Spaceship ship){
    myCenterX = ship.getX();
    myCenterY = ship.getY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getPoint();
    accelerate(1);
    myColor = #ffffff;
  }
  public void show(){
    stroke(#000000);
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  double getX(){
    return myCenterX;
  }
  double getY(){
    return myCenterY;
  }
}
