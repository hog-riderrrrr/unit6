void game(){
  background(0);
  
  
  
  fill(250);
  
  //circle(x[0], y[0], 30);
  //circle(x[1], y[1], 30);
  //circle(x[2], y[2], 30);
  
  int i = 0;
  while (i < n) {
    circle(x[n], y[n], 30);
    i = i + 1;
  
  
  
  
  circle(ballx, bally, 20);
  circle(playerx, 800, 100);
  
  ballx = ballx + vx;
  bally = bally + vy;
  if (ballx >= 980) {
    vx = vx * -1;
  }
  if (ballx <= 0) {
    vx = vx * -1;
  }
  if (bally >= 780) {
    vy = vy * -1;
  }
  if (bally <= 0) {
    vy = vy * -1;
  }
  
  if(dist(ballx, bally, playerx, 750) <= 40){   
    vx = (ballx - playerx) / constant;
    vy = (bally - 750) / constant;
  }
  
  
  if(playerx >= 50 && playerx <= 950){
    playercollideleft = false;
    playercollideright = false;
  } else if(playerx <= 50) {
    playercollideleft = true;
  } else if(playerx >= 950) {
    playercollideright = true;
  }
  
  
  
  
  
  if(leftkey == true && playercollideleft == false) {
    playerspeedleft = -10;
    playerx = playerx + playerspeedleft;
  } else if(leftkey == true && playercollideleft == true) {
    playerspeedleft = 0;
    playerx = playerx + playerspeedleft;
  }
  
  if(rightkey == true && playercollideright == false) {
    playerspeedright = 10;
    playerx = playerx + playerspeedright;
  } else if(rightkey == true && playercollideright == true) {
   playerspeedright = 0;
   playerx = playerx + playerspeedright;
  }
  
  
  
  
  
}
}

void gameclicks() {
  
  
}
