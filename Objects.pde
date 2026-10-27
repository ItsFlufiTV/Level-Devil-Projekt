PImage spikes;
public class sprite{//sprite classe erstellt
  float x, y;//alle nötigen variablen werden erstellt
  float bewegungY = 0;
  int w, h, r, waitTime; // w = width h = height
  boolean isFalling, ballIsFalling, isRising, isWaiting, hasRisen = false;
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
  void update(){//die sprites werden geupdatet ob sie fallen nach oben gehen oder so bleiben
    if(isFalling == true){//fällt
    bewegungY += 2;
    y += bewegungY;
    }
    if(ballIsFalling){//ball fällt andere geschindigekit
    bewegungY += 0.5;
    y += bewegungY;
    }
    if(isRising){//geht nach oben
      if(!isWaiting){//wenn er nicht wartet
        y -= 5;
        if(y <= 380){
          isWaiting = true;//oben angekommen und wartet
          waitTime = millis();
        }
      }
      else {
        if(millis() - waitTime >= 1000){//wartet bis es fällt und das es oben war auf true gesetzt
          isRising = false;
          isWaiting = false;
          hasRisen = false;
          isFalling = true;
        }
      }
    }
  }
  void display(){//die sprites werden gezeigt
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
