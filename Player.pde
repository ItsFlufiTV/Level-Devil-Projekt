public class player {
  boolean onGround = false;
  float x, y;
  int w, h; // w = width h = height
  float bewegungX = 0;
  float bewegungY = 0;
  float gravity = 0.5;
  float zielGeschwindigkeitX = 0;
  public player(float x, float y, int w, int h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  public void update(sprite[] allGrounds, sprite door){
    bewegungY += gravity;

    x += bewegungX;

    onGround = false;
    for (sprite g : allGrounds) {
      if (x < g.x + g.w && x + w > g.x && y < g.y + g.h && y + h > g.y) {
        if (bewegungX > 0) {
          x = g.x - w;
        } else if (bewegungX < 0) {
          x = g.x + g.w;
        }
        bewegungX = 0;
      }
    }

    y += bewegungY;

    for(sprite g : allGrounds){ //collision check
      if(x < g.x + g.w && x + w > g.x && y < g.y + g.h && y + h > g.y){ //erst player player von rechts an das linke ende dann anders rum und das auch noch mit y
        if(bewegungY > 0 && (y + h - bewegungY) <= g.y + g.bewegungY + 2){// von oben fallend
          y = g.y - h;
          bewegungY = 0;
          onGround = true;
        }
      }
      if (y > height && keyPressed == true){
        reset();
      }
    }
    if (x < door.x + door.w && x + w > door.x && y < door.y + door.h && y + h > door.y) {
      if (bewegungX > 0) {
        x = door.x - w;
      } else if (bewegungX < 0) {
        x = door.x + door.w;
      }
      levelComplete = true;
    }
  }
  public void jump(){
    if(onGround == true){
      bewegungY -= 12;
    }
  }
  public void display(){
    fill(0, 0, 0);
    rect(x, y, w, h);
  }
}
