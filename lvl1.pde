sprite[] allSprites1 = new sprite[3];//array wird erstellt
sprite door = new sprite(1700, 580, 100, 100);//neuer sprite door
void lvl1Build(){// die level bau funktio
  nextLevel = 2;// das nächste level wird initializiert und auf 2 gesetzt
  animationPlayer1 = loadImage("animation0.png");//animation die bilder eingeleitet
  animationPlayer2 = loadImage("animation1.png");
  animationPlayer3 = loadImage("animation2.png");
  allSprites1[0] = new sprite(0, 680, 1300, 400);//das array wird mit den neuene sprites für den boden und das level
  allSprites1[1] = new sprite(1300, 680, 120, 400);
  allSprites1[2] =  new sprite(1420, 680, 500, 400);
}
void lvl1(){
  background(234, 216, 107);//hintergrund
  if(player.x >= 1250){//wenn der player an x ankommt fällt der boden
    allSprites1[1].isFalling = true;
  }
  for (sprite g : allSprites1){//alles im array wird geupdatet und gezeigt
    g.update();
    g.display();
  }
  fill(200);// die dorr das zie wird gezeigt
  rect(door.x, door.y, door.w, door.h);
}
