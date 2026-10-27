PImage spikes;
public class sprite{//sprite classe erstellt
  float x, y, neededHeight, neededX, speed;//alle nötigen variablen werden erstellt
  float bewegungY, bewegungX = 0;
  int w, h, r, waitTime, waitingTime; // w = width h = height
  boolean isFalling, isRising, isMovingX, hasMovenX, isWaiting, hasRisen, deadly = false;
  public sprite(float x, float y, int w, int h){//initialiesierungsweg
    this.x = x;//alle nötigen variablen werden auf die intigrieten parameter gesetzt
    this.y = y;
    this.w = w;
    this.h = h;
  }
  public sprite(float x, float y, int r){//das gleiche für kreis
    this.x = x;
    this.y = y;
    this.r = r;
  }
  public sprite(float x, float y, int w, int h, boolean deadly){//spikes
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.deadly = deadly;
  }
  void update(){//die sprites werden geupdatet ob sie fallen nach oben gehen oder so bleiben
    if(isFalling){//fällt
    bewegungY += speed;
      y += bewegungY;
    }
    if(isMovingX){
      if(!isWaiting){
        bewegungX += speed;
        x += bewegungX;
        if(x >= neededX)
          isWaiting = true;
          waitTime = millis();
      }
      else{
        if(millis() - waitTime >= waitingTime){
          isMovingX = false;
          isWaiting = false;
          hasMovenX = true;
        }
      }
    }
    if(isRising){//geht nach oben
      if(!isWaiting){//wenn er nicht wartet
        y -= speed;
        if(y <= neededHeight){
          isWaiting = true;//oben angekommen und wartet
          waitTime = millis();
        }
      }
      else {
        if(millis() - waitTime >= waitingTime){//wartet bis es fällt und das es oben war auf true gesetzt
          isRising = false;
          isWaiting = false;
          hasRisen = false;
          isFalling = true;
        }
      }
    }
  }
  void display(){//die sprites werden gezeigt
    if(w > 1 && !deadly){
      noStroke();
      fill(191, 163, 0);
      rect(x, y, w, h);
    }
    else if(r > 1){
      stroke(0);
      fill(80);
      circle(x, y, r);
    }
    if(deadly){
      image(spikes, x, y, w, h);
    }
  }
}
