 Star[] star = new Star[200];
Spaceship wow = new Spaceship();
ArrayList <Asteroid> thing = new ArrayList <Asteroid>();
ArrayList <Bullets> thing2 = new ArrayList <Bullets>();
public boolean wa = false;
public boolean sa = false;
public boolean ab = false;
public boolean db = false;
public boolean fire = false;
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
    for(int j = 0; j < thing.size(); j++){ 
      for(int i = 0; i < thing2.size(); i++){
      thing2.get(i).move();
      thing2.get(i).show();
      float d = dist((float)thing2.get(i).getX(), (float)thing2.get(i).getY(),(float)thing.get(j).getX(), (float)thing.get(j).getY());
      if(d < 10)
        thing.remove(j);
        //thing2.remove(i);
      }
    }
  
    if(thing.size() == 0){
        frameRate(0);
        background(255);
        fill(0);
        text("GAME CLEAR!", 250, 250);
      }
    
    for(int i = 0; i < thing.size(); i++){
      thing.get(i).move();
      thing.get(i).show();
      float d = dist((float)wow.getX(), (float)wow.getY(), (float)thing.get(i).getX(), (float)thing.get(i).getY());
      if(d < 10)
        thing.remove(i);
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
    if(key == ' '){
      thing2.add(new Bullets(wow));
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
  
