Spaceship vvv = new Spaceship();
Star[] str = new Star[200];
public void setup() 
{
  size(500,500);
  background(#000000);
  for(int i = 0; i < str.length; i++){
    str[i] = new Star();
  }
}
public void draw(){
  background(#000000);
  for(int i = 0; i < str.length; i++){
    str[i].show();
  }
  vvv.show();
  vvv.move();
  keyPressed();
}
public void keyTyped(){
  if(key == 'w'){
    vvv.accelerate(0.1);
  }
  if(key == 'a'){
    vvv.turn(-5);
  }
  if(key == 'd'){
    vvv.turn(5);
  }
}
public void keyReleased(){
  if(key == 'q'){
      vvv.hyperspace();
    }
}
