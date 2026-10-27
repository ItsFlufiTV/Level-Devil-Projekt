PImage animationPlayer1;//alle animationen variablen erstellt
PImage animationPlayer2;
PImage animationPlayer3;
public class player {
  boolean onGround = false;//ist normaler weise noch nihy auf boden standartmäsig auf false
  boolean allife = true;//lebt automatisch
  float x, y;//position des spielers
  int w, h; // w = width h = height
  float bewegungX, bewegungY = 0;//die bewegung in x oder y ist standartmäsig auf 0
  float zielGeschwindigkeitX = 0;//zielgeschwindigkeit in x richtung standartmäsig auch auf 0
  float gravity = 0.5;// gravitationskraft auf 0.5 dauerhaft
  public player(float x, float y, int w, int h){//player intializiert
    this.x = x;//alle variablen werden übergeben
    this.y = y;
    this.w = w;
    this.h = h;
  }
  public void update(sprite[] allGrounds, sprite door){//der spieler wird geupdatet
    if(allife){//check ob er lebt um ihn zu displayen
      display();
    }
    else{//wenn nicht lebt wird der todestext gezeigt
    fill(100);
    textSize(70);
    textAlign(CENTER,CENTER);
    text("Press any Key to restart", width / 2, height / 2);
    if(keyPressed){//wenn taste gedrückt wird wird das level zurückgesetzt
      reset();
    }
    }
    bewegungY += gravity;//gravitation wird addiert um den spieler standartmásig nach unten zu bewegen

    x += bewegungX;//die x position wird mit bewegungX addiert um den spieler falls bewegt nach rechts oder links zu verschieben

    onGround = false;//bei jedem update standartmäsig auf false um den spieler nur auf boden die gravitation nicht zu benutzen
    for (sprite g : allGrounds) {//für jedes object wird es ausgeführt
      if (g.w > 0 && x < g.x + g.w && x + w > g.x && y < g.y + g.h && y + h > g.y) {//x und y collision mit den (hitboxen)
        if (bewegungX > 0) {//falls er sich nach links oder rechts beweg darf er das nicht und die bewegung wird annuliert
          x = g.x - w;
        } else if (bewegungX < 0) {
          x = g.x + g.w;
        }
        bewegungX = 0;
      }
      if (g.r > 0 && x < g.x + g.r/2 && x + w > g.x - g.r/2  && y + h > g.y - g.r/2 && y < g.y + g.r/2){//collision mit kugeln die den spieler töten
        allife = false;
      }
    }

    y += bewegungY;

    for(sprite g : allGrounds){ //collision check
      if(g.w > 0 && x < g.x + g.w && x + w > g.x && y < g.y + g.h && y + h > g.y){ //erst player player von rechts an das linke ende dann anders rum und das auch noch mit y
        if(bewegungY > 0 && (y + h - bewegungY) <= g.y + g.bewegungY + 2){// von oben fallend bewegung wird annuliert nach oben oder unten
          y = g.y - h;
          bewegungY = 0;
          onGround = true;
        }
        if(bewegungY < 0 && (y + bewegungY) >= g.y + g.h + g.bewegungY + 2)
          y = g.y + g.h;
      }
      if (y > height | y + h < 0 | x + w < 0 | x > width){ //auserhalb des bildschirms stirbt der spieler
        allife = false;
    }
    if (x < door.x + door.w && x + w > door.x && y < door.y + door.h && y + h > door.y) {//collision mit tür und wenn dann levelComplete true für win
      if (bewegungX > 0) {
        x = door.x - w;
      } else if (bewegungX < 0) {
        x = door.x + door.w;
      }
      levelComplete = true;
    }
  }
}
  public void jump(){//jump funktiion um den spieler wenn auf boden springen zu lassen
    if(onGround == true){
      bewegungY -= 12;
    }
  }
  public void display(){//zeig den spieler mit zwei bildern nach links und nach rechts und wenn er steht als animation
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
