class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid(){
    rotSpeed = Math.random()*2;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor = 255;
    myCenterX = Math.random()*500; 
    myCenterY = Math.random()*500;
    myXspeed = Math.random()*2;
    myYspeed = Math.random()*2; 
    myCenterX = myCenterX + Math.random()*3;
    myCenterY = myCenterY + Math.random()*3;
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
  
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
