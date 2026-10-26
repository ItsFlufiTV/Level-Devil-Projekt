void reset(){
  currentLevelBuild();
  player.x = 100;
  player.y = 200;
}
void currentLevelBuild(){
  if (currentLevel == 1){
    lvl1Build();
  }
  if(currentLevel == 2){

  }
}
void currentLevel(){
  if(currentLevel == 1){
    lvl1();
  }
  if(currentLevel == 2){

  }
}
