import java.awt.Rectangle;
public class player {
  boolean isFalling = false;
  float x, y;
  int with, hight;
  Rectangle hitbox;
  public player(float x, float y, int with, int hight){
    this.x = x;
    this.y = y;
    this.with = with;
    this.hight = hight;
    initHitbox();
  }
  private void initHitbox(){
     hitbox = new Rectangle((int) x,(int) y, with, hight);
  }
   public void updateHitbox() {
    hitbox.x = (int) x;
    hitbox.y = (int) y;
  }
  public void 
}
