boolean moveRight = false;
boolean moveLeft = false;
void movement(){  //pfeiltasten rechts und links zum bewegen und nach oben zum springen
  player.zielGeschwindigkeitX = 0;
    if (moveRight){
      player.zielGeschwindigkeitX= 5;
    }
    if (moveLeft){
      player.zielGeschwindigkeitX = -5;
    }
  if (player.onGround){
    player.bewegungX = player.zielGeschwindigkeitX;
  }
  else {
   player.bewegungX = lerp(player.bewegungX, player.zielGeschwindigkeitX, 0.3);
  }
}
void keyPressed(){
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
void keyReleased(){
  if (keyCode == RIGHT){
    moveRight = false;
  }
  if(keyCode == LEFT){
  moveLeft = false;
  }
}
