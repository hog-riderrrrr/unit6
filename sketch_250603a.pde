int mode;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;
float ballx, bally;
float vx, vy;
float playerx;
boolean leftkey, rightkey;
boolean playercollideleft, playercollideright;
float playerspeedleft, playerspeedright;
float constant;
int[] x;
int[] y;
int n;
int tempx, tempy;
boolean[] alive;


void setup() {
  size(1000, 800);
  mode = intro;
  playerspeedleft = -10;
  playerspeedright = 10;
  playerx = 500;
  ballx = 500;
  bally = 600;
  vx = 0;
  vy = -12;
  constant = 4;
  

  n = 27;
  x = new int[n];
  y = new int[n];
  tempx = 100;
  tempy = 100;
  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    alive[i] = true;
    tempx = tempx + 100;
    if (tempx == width) {
      tempx = 100;
      tempy = tempy + 100;
    }
    i = i + 1;
  }


}

void draw() {
  background(0);

  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == pause) {
    pause();
  } else if (mode == gameover) {
    gameover();
  } else {
    print("mode error");
  }
}
