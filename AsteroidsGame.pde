Spaceship vvv;
Star[] str = new Star[200];
ArrayList <Asteroid> Pop;
public void setup(){
  size(500,500);
  vvv = new Spaceship(); 
  Pop = new ArrayList <Asteroid>();
  background(#000000);
  for(int i = 0; i < str.length; i++){
    str[i] = new Star();
  }
  for(int i = 0; i < 6; i++){
    Pop.add(new Asteroid());
  }
}
public void draw(){
  background(#000000);
  for(int i = 0; i < str.length; i++){
    str[i].show();
  }
  for(int i = 0; i < Pop.size(); i++){
    Pop.get(i).move();
    Pop.get(i).show();
    float d = dist((float)vvv.getX(), (float)vvv.getY(), (float)Pop.get(i).getCenterX(), (float)Pop.get(i).getCenterY());
    System.out.println(d);
    if(d < 30){
      Pop.remove(i);
      i--;
    } 
  }
   vvv.show();
   vvv.move();
}
public void keyTyped(){
  if(key == 'w'){
    vvv.accelerate(0.1);
  }
  if(key == 's'){
    vvv.accelerate(-0.1);
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
