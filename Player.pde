import java.awt.Rectangle;
public class player {
  boolean isFalling = false;
  float x, y;
  int width, hight;
  Rectangle hitbox;

  public player(float x, float y, int width, int hight){
    this.x = x;
    this.y = y;
    this.width = width;
    this.hight = hight;
  }

  private void initHitbox(){
      hitbox = new Rectangle((int) x,(int) y, width, hight);
  }
  public void updateHitbox() {
    hitbox.x = (int) x;
    hitbox.y = (int) y;
  }
}
