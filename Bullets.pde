class Bullets extends Floater
{
  public Bullets(Spaceship wow){
    myCenterX = wow.getX();
    myCenterY = wow.getY();
    myXspeed = wow.getXspeed();
    myYspeed = wow.getYspeed();
    myPointDirection = wow.myPointDirection;
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
