int currentLevel = 1; //currentLevel ist gleich erstes Level
player player = new player(100, 200, 20, 50); //neue Player aus classe an Player übergeben
boolean levelComplete = false;
void setup(){
  size(1920, 1060);
  currentLevelBuild(); //das jetztige level wird erstellt
}
void draw(){
  movement(); //movement funktion wird aufgerufen
  checkLevelLoop(); //das currentlevel wird aufgerufen
  player.display();
  if(levelComplete){
    background(0);
    fill(255);
    textSize(100);
    textAlign(CENTER,CENTER);
    text("Level " + currentLevel + " Complete", width / 2, height / 2);
  }
}
