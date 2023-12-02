class Asteroids extends Floater {
  private double rotSpeed;
  public Asteroids(){
    corners = 7;
    xCorners = new int[]{-10, 0, 11, 6, -7, -9, -8};
    yCorners = new int[]{9, 10, 0, -7, -4, 0, 4};   
    myColor = color(220,20,60);
    myCenterX = (int)(Math.random()*500);
    myCenterY = 0;  
    myXspeed = (double)(Math.random()*11)-5;
    myYspeed = (double)(Math.random()*11)-5; 
    myPointDirection = 0;
    rotSpeed = 4.7;
  }
  
  public void move(){
    myPointDirection += rotSpeed;
    myCenterX += myXspeed;    
    myCenterY += myYspeed; 
    //wrap around screen    
    if(myCenterX >width)
    {     
      myCenterX = 0;    
    }    
    else if (myCenterX<0)
    {     
      myCenterX = width;    
    }    
    if(myCenterY >height)
    {    
      myCenterY = 0;    
    } 
    
    else if (myCenterY < 0)
    {     
      myCenterY = height;    
    }
  }
  
  public boolean check(){
    if(dist((float)myCenterX, (float)myCenterY, (float)hi.getX(), (float)hi.getY()) < 25){
      return true;   
    }
    return false;
  }
}
