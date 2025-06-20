import processing.sound.*;

SoundFile music;

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
boolean pkey;
int score;

PImage[] gif;
int numberofframes;
int frame;


void setup() {
  size(1000, 800);
  
  music = new SoundFile(this, "music.mp3");
  
  numberofframes = 30;
  gif = new PImage[numberofframes];
  int j = 0;
  while ( j < numberofframes) {
    gif[j] = loadImage("frame_"+ j + "_delay-0.03s.gif");
    j++;
  }
  frame = 0;


  mode = intro;
  playerspeedleft = -10;
  playerspeedright = 10;
  playerx = 500;
  ballx = 500;
  bally = 600;
  vx = 0;
  vy = -12;
  constant = 4;
  score = 0;

  n = 27;
  x = new int[n];
  y = new int[n];
  alive = new boolean[n];
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
