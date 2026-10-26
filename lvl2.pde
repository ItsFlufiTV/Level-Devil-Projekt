sprite[] allSprites2 = new sprite[4];
void lvl2Build(){
  nextLevel = 3;
  allSprites2[0] = new sprite(0, 680, 1300, 400);
  allSprites2[1] = new sprite(1300, 680, 120, 400);
  allSprites2[2] = new sprite(1420, 680, 500, 400);
  allSprites2[3] = new sprite(1100, -253, 350);
}
void lvl2(){
  background(234, 216, 107);
  if(player.x > 1000){
    allSprites2[3].ballIsFalling = true;
  }
  for(sprite s : allSprites2){
    s.update();
    s.display();
  }
  noStroke();
  fill(200);
  rect(door.x, door.y, door.w, door.h);
}
