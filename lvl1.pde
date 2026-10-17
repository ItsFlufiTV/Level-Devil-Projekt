int objectY = 680;
void lvl1(){
  object ground1 = new object(0, 680, 1300, 400);
  object ground2 = new object(1420, 680, 500, 400);
  background(234, 216, 107);
  fill(191, 163, 0);
  noStroke();
  rect(ground1.x, ground1.y, ground1.width, ground1.height);
  rect(ground2.x, ground2.y, ground2.width, ground2.height);
  drop();
}
void drop(){
  if(player.x >= 1250){
      objectY += 10;
      rect(1300, objectY, 120, 400);
  }
  else {
    rect(1300, objectY, 120, 400);
  }
}
