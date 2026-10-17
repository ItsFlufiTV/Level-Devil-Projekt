void movement(){  //pfeiltasten rechts und links zum bewegen und nach oben zum springen
  if (keyPressed == true){
    if (keyCode == RIGHT){
      player.x += 10;
    }
    if (keyCode == LEFT){
      player.x -= 10;
    }
    if (keyCode == UP){
      player.y -= 10;
    }
  }
}
