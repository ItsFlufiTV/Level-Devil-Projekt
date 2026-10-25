int currentLevel = 1;
player player = new player(100, 630, 20, 50);
boolean levelComplete = false;
void setup(){
  size(1920, 1060);
  lvl1Build();
}
void draw(){
  movement();
  lvl1();
  player.update(grounds, door);
  player.display();
  if(levelComplete){
    background(0);
    fill(255);
    textSize(100);
    textAlign(CENTER,CENTER);
    text("Level " + currentLevel + " Complete", width / 2, height / 2);
  }
}
