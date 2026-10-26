void reset(){
  player.allife = true;
  currentLevelBuild();
  player.x = 100;
  player.y = 200;
}
void currentLevelBuild(){
  if (currentLevel == 1){
    lvl1Build();
  }
  if(currentLevel == 2){
    lvl2Build();
  }
}
void checkLevelLoop(){
  if(currentLevel == 1){
    lvl1();
    player.update(allSprites1,door);
  }
  if(currentLevel == 2){
    lvl2();
    player.update(allSprites2,door);
  }
}
