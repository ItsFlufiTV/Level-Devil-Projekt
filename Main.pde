void setup(){
  size(1920, 1060);
}
void draw(){
  movement();
  lvl1();
  rect(player.x, 670, 10, 10);
  println(player.x);
}
