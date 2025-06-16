void intro() {
  music.play();
  background(0);
  image(gif[frame], 0, 0, width, height);
  frame = frame + 1;
  if(frame == numberofframes) frame = 0;
  
  size(1000, 800);
  
  
  fill(255, 0, 0);
  textSize(100);
  textAlign(CENTER, CENTER);
  text("BREAKOUT", 500, 330);
  
  int i = 0;
  while(i < n) {
  alive[i] = true;
  i++;
  }
  
  fill(#90FFEA);
  textSize(20);
  text("press anywhere to start", 500, 380);
  
  
}




void introclicks() {
  mode = game;
}
