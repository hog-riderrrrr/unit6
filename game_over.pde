void gameover() {
  background(0);

  fill(255);
  textSize(100);
  text("GAME OVER", 260, 330);

if(score <= n) {
  textSize(20);
  text("Get better dawg", 444, 400);
} else if (score >= n) {
    textSize(20);
  text("You actually won wth", 431, 400);
}

}


void gameoverclicks() {
}
