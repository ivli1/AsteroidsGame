Spaceship vvv;
Star[] str = new Star[200];
ArrayList <Asteroid> Pop;
ArrayList <Bullet> pew;
public void setup(){
  size(1000,1000);
  vvv = new Spaceship(); 
  Pop = new ArrayList <Asteroid>();
  pew = new ArrayList<Bullet>();
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
  for(int i = 0; i < pew.size(); i++){
    pew.get(i).show();
    pew.get(i).move();
    for(int o = 0; o < Pop.size(); o++){
      float dd = dist((float)pew.get(i).getX(), (float)pew.get(i).getY(), (float)Pop.get(o).getCenterX(), (float)Pop.get(o).getCenterY());
      if(dd < 15){
        Pop.remove(o);
        pew.remove(i);
        break;
      }
    }
  }
  for(int i = 0; i < Pop.size(); i++){
    Pop.get(i).move();
    Pop.get(i).show();
    float d = dist((float)vvv.getX(), (float)vvv.getY(), (float)Pop.get(i).getCenterX(), (float)Pop.get(i).getCenterY());
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
  }else if(key == 's'){
    vvv.accelerate(-0.1);
  }else if(key == 'a'){
    vvv.turn(-5);
  }else if(key == 'd'){
    vvv.turn(5);
  }else if(key == ' '){
    pew.add(new Bullet(vvv));
  }
}
public void keyReleased(){
  if(key == 'q'){
      vvv.hyperspace();
    }
}
