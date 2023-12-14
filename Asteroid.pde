class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = Math.random()*2;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -2;
    yCorners[0] = -5;
    xCorners[1] = 4;
    yCorners[1] = -10;
    xCorners[2] = 14;
    yCorners[2] = 5;
    xCorners[3] = 7;
    yCorners[3] = 10;
    xCorners[4] = -12;
    yCorners[4] = 6;
    xCorners[5] = -6;
    yCorners[5] = 1;
    myColor = 100;
    myCenterX = Math.random()*500; 
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*2;
    myYspeed = Math.random()*2; 
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
