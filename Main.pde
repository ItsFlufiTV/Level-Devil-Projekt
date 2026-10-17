player player = new player(100, 630, 20, 50);
void setup(){
  size(1920, 1060);
}
void draw(){
  movement();
  lvl1();
  rect(player.x, player.y, player.width, player.height);
  player.updateHitbox();
}
