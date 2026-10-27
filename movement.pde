boolean moveRight, moveLeft = false;//moved noch nicjt nach rechts oder links
void movement(){  //die boolean variablen ändern die zielGeschwindigkeit je nach dem ob links oder rechts
  player.zielGeschwindigkeitX = 0;
    if (moveRight){
      player.zielGeschwindigkeitX= 5;
    }
    if (moveLeft){
      player.zielGeschwindigkeitX = -5;
    }
  if (player.onGround){
    player.bewegungX = player.zielGeschwindigkeitX;//wenn auf boden dann normaler speed
  }
  else {
   player.bewegungX = lerp(player.bewegungX, player.zielGeschwindigkeitX, 0.3);// wenn in der luft dann langsam an den speed angleicehn
  }
}
void keyPressed(){//wenn taste gedrückt dann check welche wenn links oder rechts boolean ändern undoben jump funktion
  if (keyCode == RIGHT){
    moveRight = true;
  }
  if (keyCode == LEFT){
    moveLeft = true;
  }
  if(keyCode == UP){
    player.jump();
  }
}
void keyReleased(){//wenn losgelassen wieder zurückgeändert auf false
  if (keyCode == RIGHT){
    moveRight = false;
  }
  if(keyCode == LEFT){
    moveLeft = false;
  }
}
