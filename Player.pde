PImage animationPlayer1 = loadImage("animation0 .png");
PImage animationPlayer2 = loadImage("animation1.png");
PImage animationPlayer3 = loadImage("animation2.png");
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
      if (y > height){
      fill(100);
      textSize(70);
      textAlign(CENTER,CENTER);
      text("Press any Key to restart", width / 2, height / 2);
      if(keyPressed){
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
}
  public void jump(){
    if(onGround == true){
      bewegungY -= 12;
    }
  }
  public void display(){
    if(moveRight){
      image(animationPlayer2, x, y);
    }
    else if(moveLeft){
      image(animationPlayer3, x, y);
    }
    else{
      image(animationPlayer1, x, y);
    }
  }
}
