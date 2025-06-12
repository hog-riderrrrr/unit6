void intro() {
  background(0);
  while (frame <= numberofframes) {
  image(gif[frame], 0, 0, width, height);
  frame = frame + 1;
  if(frame == numberofframes) frame = 0;
  }
  
  size(1000, 800);
  
  
  fill(255);
  textSize(100);
  text("BREAKOUT", 264, 330);
  
  textSize(20);
  text("press anywhere to start", 390, 380);
  
}




void introclicks() {
  mode = game;
}
