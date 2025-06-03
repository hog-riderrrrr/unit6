int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;
float ballx, bally;
float vx, vy;
float paddlex;
boolean leftkey, rightkey;




void setup() {
  size(1000, 800);
  background(0);
  mode = intro;
  
}

void draw() {
  if(mode == intro){
    intro();
  } else if(mode == game){
    game();
  } else if(mode == pause){
    pause();
  } else if(mode == gameover){
    gameover();
  } else {
    print("mode error");
  }
  
  
  
}
