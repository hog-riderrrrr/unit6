void gameover() {
  background(0);
  image(gif[frame], 0, 0, width, height);
  frame = frame + 1;
  if(frame == numberofframes) frame = 0;
  
  fill(255);
  textSize(100);
  textAlign(CENTER, CENTER);
  text("GAME OVER", 500, 330);

if(score <= n) {
  textSize(20);
  text("Get better dawg", 500, 400);
} else if (score >= n) {
    textSize(20);
  text("You actually won wth", 500, 400);
}

textAlign(CENTER, CENTER);
text("click anywhere to go back go home", 500, 430);

}


void gameoverclicks() {
  mode = intro;
}
