sprite[] allSprites4 = new sprite[5];
void lvl4Build(){
  nextLevel = 5;
  allSprites4[0] = new sprite(0, 680, 600, 400);
  allSprites4[1] = new sprite(500, 680, 50, 400);
  allSprites4[2] = new sprite(600, 680, 120, 400);
  allSprites4[3] = new sprite(720, 680, 50, 400);
  allSprites4[4] = new sprite(720, 680, 1200, 400);
}
void lvl4(){
background(234, 216, 107);
  if(player.x >= 535 && !allSprites4[3].hasRisen){
    allSprites4[2].isFalling = true;
    allSprites4[2].speed = 2;

    allSprites4[3].isRising = true;
    allSprites4[3].speed = 10;
    allSprites4[3].neededHeight = 400;
    allSprites4[3].waitingTime = 1;
  }
  if(player.x >= 655){
    allSprites4[3].isRising = true;
    allSprites4[3].needsDrop = true;
  }
  if(player.x >= 600 && !allSprites4[1].hasRisen){
    allSprites4[1].isRising = true;
    allSprites4[1].speed = 10;
    allSprites4[1].neededHeight = 400;
    allSprites4[1].waitingTime = 20;
  }
    if(allSprites4[1].hasRisen && !allSprites4[1].hasMovenX){
    allSprites4[1].isMovingX = true;
    allSprites4[1].neededX = 550;
    allSprites4[1].waitingTime = 1000;
    allSprites4[1].needsDropX = true;
  }
  for(sprite g : allSprites4){
    g.update();
    g.display();
  }
  noStroke();//die tür wird gezeigt
  fill(200);
  rect(door.x, door.y, door.w, door.h);
}
