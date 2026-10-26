public class sprite{
  float x, y;
  float bewegungY = 0;
  int w, h, r, waitTime; // w = width h = height
  boolean isFalling, ballIsFalling, isRising, isWaiting, hasRisen = false;
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
    if(ballIsFalling){
    bewegungY += 0.5;
    y += bewegungY;
    }
    if(isRising){
      if(!isWaiting){
        y -= 5;
        if(y <= 380){
          isWaiting = true;
          waitTime = millis();
        }
      }
      else {
        if(millis() - waitTime >= 1000){
          isRising = false;
          isWaiting = false;
          hasRisen = false;
          isFalling = true;
        }
      }
    }
  }
  void display(){
    if(w > 1){
      noStroke();
      fill(191, 163, 0);
      rect(x, y, w, h);
    }
    else if(r > 1){
      stroke(0);
      fill(80);
      circle(x, y, r);
    }
  }
}
