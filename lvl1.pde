sprite[] allSprites1 = new sprite[3];
sprite door = new sprite(1700, 580, 100, 100);
void lvl1Build(){
  nextLevel = 2;
  animationPlayer1 = loadImage("animation0.png");
  animationPlayer2 = loadImage("animation1.png");
  animationPlayer3 = loadImage("animation2.png");
  allSprites1[0] = new sprite(0, 680, 1300, 400);
  allSprites1[1] = new sprite(1300, 680, 120, 400);
  allSprites1[2] =  new sprite(1420, 680, 500, 400);
}
void lvl1(){
  background(234, 216, 107);
  if(player.x >= 1250){
    allSprites1[1].isFalling = true;
  }
  for (sprite g : allSprites1){
    g.update();
    g.display();
  }
  fill(200);
  rect(door.x, door.y, door.w, door.h);
}
