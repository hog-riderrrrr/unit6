void game() {
  background(0);



  fill(250);


  int i = 0;
  while (i < n) {
    if (alive[i] == true) {
      drawbricks(i);
    }
    i++;
  }




  circle(ballx, bally, 20);
  circle(playerx, 800, 100);

  ballx = ballx + vx;
  bally = bally + vy;
  if (ballx >= 990) {
    vx = vx * -1;
  }
  if (ballx <= 10) {
    vx = vx * -1;
  }
  if (bally >= 790) {
    vy = vy * -1;
  }
  if (bally <= 10) {
    vy = vy * -1;
  }

  if (dist(ballx, bally, playerx, 750) <= 30) {
    vx = (ballx - playerx) / constant + 0.5;
    vy = (bally - 750) / constant + 0.5;
  }


  if (playerx >= 50 && playerx <= 950) {
    playercollideleft = false;
    playercollideright = false;
  } else if (playerx <= 50) {
    playercollideleft = true;
  } else if (playerx >= 950) {
    playercollideright = true;
  }





  if (leftkey == true && playercollideleft == false) {
    playerspeedleft = -10;
    playerx = playerx + playerspeedleft;
  } else if (leftkey == true && playercollideleft == true) {
    playerspeedleft = 0;
    playerx = playerx + playerspeedleft;
  }

  if (rightkey == true && playercollideright == false) {
    playerspeedright = 10;
    playerx = playerx + playerspeedright;
  } else if (rightkey == true && playercollideright == true) {
    playerspeedright = 0;
    playerx = playerx + playerspeedright;
  }


  //pause the game
  textSize(20);
  text("press p to pause", 850, 40);
  if (pkey == true) {
    mode = pause;
    pkey = false;
  }

  if (bally >= 790) {
    mode = gameover;
  }
  
  if(score >= n) {
    mode = gameover;
  }
  
  
} // end of void game


void drawbricks(int i) {
  circle(x[i], y[i], 45);

  if (dist(ballx, bally, x[i], y[i]) < 20/2 + 30/2) {
    vx = (ballx - x[i]) / constant;
    vy = (bally - y[i]) / constant;
    score = score + 1;
    alive[i] = false;
  }
}




void gameclicks() {
}
