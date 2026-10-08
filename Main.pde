int objectY = 680;
void lvl1(){
  bg(234, 216, 107);
  fill(191, 163, 0);
  noStroke();
  rect(0, 680, 1300, 400);
  rect(1420, 680, 500, 400);
  drop();
}
void drop(){
  if(playerX == 1250){
   for (objectY >= 1060){ 
      objectY += 10;
      rect(1300, objectY, 120, 400);
       }
    else {
      rect(1300, objectY, 120, 400);
        }
  }
}
