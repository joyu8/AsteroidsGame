Star[] star = new Star[200];
Spaceship wow = new Spaceship();
ArrayList <Asteroid> thing = new ArrayList <Asteroid>();
boolean wa = false;
boolean sa = false;
boolean ab = false;
boolean db = false;
double b = 0.1;
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
    if(db == true){
    wow.turn(10);
    }
    if(ab == true){
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
  

  
class Spaceship extends Floater  
{   
  public Spaceship(){
  corners = 4;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] = 0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  xCorners[3] = -2;
  yCorners[3] = 0;
  myColor = 255;
  myCenterX = 250;
  myCenterY = 250;
  }
  
  public void setXspeed(double x){
    myXspeed = x;
  }
  
  public void setX(double x){
    myCenterX = x;
  }
  public double getX(){
    return myCenterX;
  }
  
  public void setY(double y){
    myCenterY = y;
  }
  public double getY(){
    return myCenterY;
  }
 
 

  
  public void Hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (int)(Math.random()*360);
  }
}

public class Star{
  private int myX, myY, a;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    a = (int)(Math.random()*5);
  }
  public void show(){
    fill(255);
    ellipse(myX, myY, a, a);
  }
}
