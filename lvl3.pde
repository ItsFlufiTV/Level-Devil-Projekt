sprite[] allSprites3 = new sprite[4];//neues aaray für neues level
void lvl3Build(){//build funktion um im current level die level strucktur aufzubauen
  nextLevel = 4;//nächstes level wird level 4
  allSprites3[0] = new sprite(1000, 720, 60, 55, true);//allle spikes und der boden in das array hinzugefügt
  allSprites3[1] = new sprite(1060, 720, 60, 55, true);
  allSprites3[2] = new sprite(1600, 720, 60, 55, true);
  allSprites3[3] = new sprite(0, 680, 1920, 400);
  spikes = loadImage("Spikes.png");//spikes bild wird genommen um später die spikes zu zeigen
}
void lvl3(){//lvl3 funktion um in current level das level zu aktualiesieren und die ereignisse zu triggern
background(234, 216, 107);//hintergrund damit der spieler keine spur hinterlässt
  if(player.x >= 940 && !allSprites3[0].hasRisen && !allSprites3[1].hasRisen){// wenn spieler dort angekommen ist kommn die zwei spikes aus dem boden
    allSprites3[0].isRising = true;
    allSprites3[0].speed = 20;
    allSprites3[0].neededHeight = 645;
    allSprites3[0].waitingTime = 1;

    allSprites3[1].isRising = true;
    allSprites3[1].speed = 20;
    allSprites3[1].neededHeight = 645;
    allSprites3[1].waitingTime = 1;
  }
  if(player.x >= 1020 && !allSprites3[1].hasMovenX){//wenn spieler versucht über die spikes zu springen moved der rechte nach rechts wo der spieler eigentlich landen würde
    allSprites3[1].isMovingX = true;
    allSprites3[1].speed = 5;
    allSprites3[1].neededX = 1100;
    allSprites3[1].waitingTime = 1;
  }
  if(player.x >= 1550){// wenn spieler kurz vor dem ziel dann schiest noch ein spike aus dem boden
    allSprites3[2].isRising = true;
    allSprites3[2].speed = 20;
    allSprites3[2].neededHeight = -60;
    allSprites3[2].waitingTime = 1;
  }
  for(sprite s : allSprites3){//alles wird geupdatet und gezeigt
    s.update();
    s.display();
  }
  noStroke();//die tür wird gezeigt
  fill(200);
  rect(door.x, door.y, door.w, door.h);
}
