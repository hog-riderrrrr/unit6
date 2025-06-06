void game(){
  background(0);
  
  
  
  fill(250);

  
  int j = 0;
  while (j < n) {
    circle(x[j], y[j], 45);
    if(dist(ballx, bally, x[j], y[j]) < 20/2 + 30/2) {
      vx = (ballx - x[j]) / constant;
      vy = (bally - y[j]) / constant;
    }
    j = j + 1;
    }
  
  
  
  
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
    vx = (ballx - playerx) / constant + 0.5;
    vy = (bally - 750) / constant + 0.5;
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

void gameclicks() {
  
  
}
