sprite[] allSprites3 = new sprite[3];
void lvl3Build(){
  nextLevel = 4;
  allSprites3[0] = new sprite(1000, 720, 50, 25, true);
  allSprites3[1] = new sprite(1050, 720, 50, 25, true);
  allSprites3[2] = new sprite(0, 680, 1920, 400);
  spikes = loadImage("Spikes.png");
}
void lvl3(){
background(234, 216, 107);
  if(player.x >= 940){
    allSprites3[0].isRising = true;
    allSprites3[0].speed = 20;
    allSprites3[0].neededHeight = 665;
    allSprites3[0].waitingTime = 1000000;

    allSprites3[1].isRising = true;
    allSprites3[1].speed = 20;
    allSprites3[1].neededHeight = 665;
    allSprites3[1].waitingTime = 1000000;
  }
  if(player.x >= )
  for(sprite s : allSprites3){
    s.update();
    s.display();
  }
  noStroke();//die tür wird gezeigt
  fill(200);
  rect(door.x, door.y, door.w, door.h);
}
