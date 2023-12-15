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
  myXspeed = 0;
  }
  
  public void setXspeed(double x){
    myXspeed = x;
  }
  
  public double getXspeed(){
    return myXspeed;
  }
      public double getpoint(){
    return myPointDirection;
  }
  public void setYspeed(double x){
    myYspeed = x;
  }
  
  public double getYspeed(){
    return myYspeed;
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
