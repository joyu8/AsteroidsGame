class Star //note that this class does NOT extend Floater
{
  private int myX, myY, r; //declares & initializes position coords and radius
  public Star(){
    myX = (int)(Math.random() * 500);
    myY = (int)(Math.random() * 500);
    r = 3;
  }
  public void show(){//creates the star
    fill(255);
    ellipse(myX, myY, r, r);
  }
}
