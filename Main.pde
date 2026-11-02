int currentLevel = 1; //currentLevel ist gleich erstes Level
player player = new player(100, 200, 20, 50); //neue Player aus klasse an Player übergeben
boolean levelComplete = false;//level ist noch nicht beendet
void setup(){
  size(1920, 1060);//fenster wird erstellt
  currentLevelBuild(); //das jetztige level wird erstellt
}
void draw(){
  movement(); //movement funktion wird aufgerufen
  checkLevelLoop(); //das currentlevel wird aufgerufen
  if(levelComplete){ //kontrolle ob das level abgeschlossen wurde
    background(0);// hintergrund gesetzt
    fill(255);//füllfarbe vom text
    textSize(100); //textgröße gesetzt
    textAlign(CENTER,CENTER);// ausrichtung des texts
    text("Level " + currentLevel + " Complete\npress SPACE", width / 2, height / 2);//text displayed
    if(keyPressed && key == ' ' ){//kontrolle space gerdrückt
      currentLevel ++;//das nächste level wird auf das jeztige gesetzt um ein neues level später abzurufen
      levelComplete = false;//das nächste level ist noch nicht abgeschlossen
      reset();//nächstes level wird gebaut bzw jetzt das jetztige
    }
  }
}
