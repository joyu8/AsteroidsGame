class Bullets extends Floater
{
  public Bullets(Spaceship e){
    myCenterX = e.getX();
    myCenterY = e.getY();
    myXspeed = e.getXspeed();
    myYspeed = e.getYspeed();
    myPointDirection = e.getpoint();
    accelerate(4);
  }
  
  public void show(){
      ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
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
}
