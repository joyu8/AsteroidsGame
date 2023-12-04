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
