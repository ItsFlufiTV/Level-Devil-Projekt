sprite[] allSprites3 = new sprite[2];
void lvl3Build(){
  nextLevel = 4;
  allSprites3[0] = new sprite(0, 680, 1920, 400);
  allSprites3[1] = new sprite(50, 500, 100, 100);
  spikes = loadImage("Spikes.png");
}
void lvl3(){
background(234, 216, 107);
  for(sprite s : allSprites3){
    s.update();
    s.display();
  }
}
