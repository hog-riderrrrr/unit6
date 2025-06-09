void keyPressed(){
  if(key == 'a' || key == 'A' || keyCode == LEFT) leftkey = true;
  if(key == 'd' || key == 'D' || keyCode == RIGHT) rightkey = true;
  
  
}

void keyReleased(){
  if(key == 'a' || key == 'A' || keyCode == LEFT) leftkey = false;
  if(key == 'd' || key == 'D' || keyCode == RIGHT) rightkey = false;
  if((mode == game || mode == pause) && (key == 'p' || key == 'P')) {
    pkey = true;
  }
}
