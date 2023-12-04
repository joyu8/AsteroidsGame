Star[] star = new Star[200];
Spaceship wow = new Spaceship();
ArrayList <Asteroid> thing = new ArrayList <Asteroid>();
boolean wa = false;
boolean sa = false;
boolean ab = false;
boolean db = false;
  public void settings(){
   size(500, 500);
   for(int i = 0; i < star.length; i++){
      star[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    thing.add(new Asteroid());
  }
}
  public void draw(){
    background(0);
    for(int i = 0; i < star.length; i++){
      star[i].show();
    }
    
    for(int i = 0; i < thing.size(); i++){
      thing.get(i).move();
      thing.get(i).show();
      float d = dist((int)wow.getX(), (int)wow.getY(), (int)thing.get(i).getX(), (int)thing.get(i).getY());
      if(d < 10)
        thing.remove(i);
      if(thing.size() == 0){
        frameRate(0);
        background(255);
        fill(0);
        text("GAME CLEAR!", 250, 250);
      }
    }
    
    if(wa == true){
     wow.accelerate(0.1);
    }
    if(sa == true){
    wow.turn(-0.1);
    }
    if(ab == true){
    wow.turn(10);
  }
    if(db == true){
  wow.turn(-10);
  }    
  wow.show();
wow.move();
}
 
  
  public void keyPressed(){
    if(key == 'h'){
      wow.Hyperspace();
      wow.accelerate(0);
    }
    if(key == 'w'){
      wa = true;
    }
    if(key == 'a'){
      ab = true;
    }
    if(key == 'd'){
      db = true;
  }
    if(key == 's'){
    sa = true;
    }
  }
  
 public void keyReleased(){
       if(key == 'w'){
      wa = false;
    }
    if(key == 'a'){
      ab = false;
    }
    if(key == 'd'){
      db = false;
  }
    if(key == 's'){
    sa = false;
    }
 }
  
