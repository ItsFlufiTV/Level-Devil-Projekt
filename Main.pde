player player = new player(100, 630, 20, 50);
helpMethods helpMethods = new helpMethods();
void setup(){
  size(1920, 1060);
  lvl1Build();
}
void draw(){
  movement();
  lvl1();
  player.update(grounds);
  player.display();
}
