public class sprite{
  float x, y;
  float bewegungY = 0;
  int w, h, r; // w = width h = height
  boolean isFalling = false;
  public sprite(float x, float y, int w, int h){
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  public sprite(float x, float y, int r){
    this.x = x;
    this.y = y;
    this.r = r;
  }
  void update(){
    if(isFalling == true){
    bewegungY += 2;
    y += bewegungY;
    }
  }
  void display(){
    //if(w > 1){
      noStroke();
      fill(191, 163, 0);
      rect(x, y, w, h);
    //}
    //else if(r > 1){
      //stroke(0);
      //fill(80);
      //circle(x, y, r);
    //}
  }
}
