//creates walker class.

class Walker {
  int x;
  int y;
  
  Walker() {
    x = width / 2;
    y = height / 2;
    a = width / 2;
    b = height / 2;
    mx = width / 2;
    my = height / 2;
  }
  
  void display() {
   
    stroke(12,232,55, 103);
    fill(0,67,232);
    point(x,y,1,1);

    stroke(0,67,232);
    point(a,b,1,1);


    stroke(255,191,64, 103);
    point(mx,my,1,1);
  }
  
  void step(){

    float stepx = random(8, -8);
    float stepy = random(8, -8);
    float stepa = random(10, -10);
    float stepb = random(10, -10);
    float moonx = random(3, -3);
    float moony = random(3, -3);

    // int stepx = int(random(6));
    // int stepy = int(random(6));

    x += stepx;
    y += stepy;
    a += stepa;
    b += stepb;
    mx += moonx;
    my += moony;

    
    // int choice = int(random(4));
    // if (choice == 0) {
    //   x += 10;
    // } else if (choice == 1) {
    //   x -= 10;
    // } else if (choice == 2) {
    //   y += 10;
    // } else if (choice == 3) {
    //   y -= 10;
    // }
    
  }
  
}// end class


Walker w;

void setup() {
  size(1000,1000);
  filter( BLUR, 6 );
  w = new Walker();
  background(0,0,0);
}

void draw() {


  w.step();
  w.display();
}

