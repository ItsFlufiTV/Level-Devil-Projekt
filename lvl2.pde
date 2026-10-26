sprite[] allSprites2 = new sprite[4];
void lvl2Build(){
  allSprites2[0] = new sprite(0, 680, 1300, 400);
  allSprites2[1] = new sprite(1300, 680, 120, 400);
  allSprites2[2] = new sprite(1420, 680, 500, 400);
  allSprites2[3] = new sprite(1300, 100, 100);
}
void lvl2(){
  for(sprite s : allSprites2){
  s.update();
  s.display();
  }
}
