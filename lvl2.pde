sprite[] allSprites2 = new sprite[5]; //neues array für das neue level
void lvl2Build(){// array wird mit boden und allen sprites befüllt und das nexte level erhöht
  nextLevel = 3;
  allSprites2[0] = new sprite(0, 680, 1300, 400);
  allSprites2[1] = new sprite(1300, 680, 120, 400);
  allSprites2[2] = new sprite(1420, 680, 500, 400);
  allSprites2[3] = new sprite(1100, -253, 350);
  allSprites2[4] = new sprite(1420, 680, 50, 400);
}
void lvl2(){
  background(234, 216, 107);// hintergrund
  if(player.x > 1000){//wenn player an x wird ball fallen gelassen
    allSprites2[3].ballIsFalling = true;
  }
  if(player.x >= 1250){// player am nächsten x boden fällt
    allSprites2[1].isFalling = true;
  }
  if(player.x >= 1300 && !allSprites2[4].hasRisen){// player überm loch eine wand schiebt sich auf und fällt wieder um den spieler zu blockieren
    allSprites2[4].isRising = true;
  }
  for(sprite s : allSprites2){//alle sprites werden geudatet und gezeigt
    s.update();
    s.display();
  }
  noStroke();//die tür wird gezeigt
  fill(200);
  rect(door.x, door.y, door.w, door.h);
}
