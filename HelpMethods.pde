void reset(){//reset funktion setzt den player zurück und daslevel wird neu erstellt
  player.allife = true;
  currentLevelBuild();
  player.x = 100;
  player.y = 200;
}
void currentLevelBuild(){//das jetztige level wird mit der jewaligen build funktion gebaut
  if (currentLevel == 1){
    lvl1Build();
  }
  if(currentLevel == 2){
    lvl2Build();
  }
  if(currentLevel == 3){
  }
}
void checkLevelLoop(){//das levle wird abgerufen und der player mi den sprites geupdatet
  if(currentLevel == 1){
    lvl1();
    player.update(allSprites1,door);
  }
  if(currentLevel == 2){
    lvl2();
    player.update(allSprites2,door);
  }
}
