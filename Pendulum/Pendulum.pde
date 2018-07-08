

float len=150;
int space=20;
Bob[] bob;
void setup() {
  size(800, 800);
  bob=new Bob[width/space];
  for (int i=0; i<bob.length; i+=1)
  {
    println(i*space);
    bob[i]=new Bob((i+1)*space, 0, 200, 20);
    bob[i].display();
  }
}
void draw() {
  background(255);
  stroke(0);
  fill(0, 50);
  for (int i=0; i<bob.length; i++)
  {
    if (mousePressed) {
      // acc=0;
      bob[i].vel=0;
      float sx=mouseX-bob[i].origin.x;
      float sy=mouseY-bob[i].origin.y;
      float theta=atan(sy/sx);
      if (theta>0) {
        bob[i].angle=(PI/2)-theta;
        println(tan(theta));
      } else {
        bob[i].angle=((PI/2)+(theta));
        bob[i].angle-=2*bob[i].angle;
      }
    }


    bob[i].update();
    bob[i].display();
  }
}
