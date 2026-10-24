public class sprite{
  float x, y;
  float bewegungY = 0;
  int w, h; // w = width h = height
  boolean isFalling = false;
  public sprite(float x, float y, int w, int h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  void update(){
    if(isFalling == true){
    bewegungY += 2;
    y += bewegungY;
    }
  }
  void display(){
    noStroke();
    fill(191, 163, 0);
    rect(x, y, w, h);
  }
}
