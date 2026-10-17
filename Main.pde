player player = new player(100, 630, 50, 20);
void setup(){
  size(1920, 1060);
}
void draw(){
  movement();
  lvl1();
  rect(player.x, player.y, player.hight, player.with);
}
