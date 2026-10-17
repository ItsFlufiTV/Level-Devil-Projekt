import java.awt.Rectangle;
public class player {
  boolean isFalling = false;
  float x, y;
  int width, height;
  Rectangle hitbox;
  public player(float x, float y, int width, int height){
    this.x = x;
    this.y = y;
    this.width = width;
    this.height = height;
    initHitbox();
  }
  private void initHitbox(){
     hitbox = new Rectangle((int) x,(int) y, width, height);
  }
   public void updateHitbox() {
    hitbox.x = (int) x;
    hitbox.y = (int) y;
  }
  public Rectangle getHitbox() {
    return hitbox;
  }
  public void drawHitbox() {
    fill(255, 0, 0);
    rect(hitbox.x, hitbox.y, hitbox.width, hitbox.height);
  }
}
