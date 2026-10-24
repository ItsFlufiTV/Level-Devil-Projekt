sprite[] grounds = new sprite[3];
sprite door = new sprite(1700, 580, 100, 100);
void lvl1Build(){
  grounds[0] = new sprite(0, 680, 1300, 400);
  grounds[1] = new sprite(1300, 680, 120, 400);
  grounds[2] =  new sprite(1420, 680, 500, 400);
}
void lvl1(){
  background(234, 216, 107);
  if(player.x >= 1250){
    grounds[1].isFalling = true;
  }
  for (sprite g : grounds){
    g.update();
    g.display();
  }
  fill(200, 200, 200);
  rect(door.x, door.y, door.w, door.h);
}
