class Snake
{  
  PVector head;   
  float mass;  
  PVector acc;
  PVector vel;
  color colr;

  Snake(float _x, float _y,  float _m) {    
    head=new PVector(_x, _y);
    acc=new PVector(0, 0);
    vel=new PVector(0, 0);
    mass=_m;
    colr=255;
  }
  void update() {
    PVector dir=Mouse.getDirection(mouseX, mouseY, head);
   //head.add(vel.add(acc.add(dir)));
   head.add(vel.add((dir)));
   vel.limit(1);
   acc.mult(0);
  }
  void update(PVector prev) {
    PVector dir=Mouse.getDirection(prev,head);
   //head.add(vel.add(acc.add(dir)));
   head.add(vel.add((dir)));
   vel.limit(1);
   acc.mult(0);
  }
  void display() {   
    fill(colr);
    println(colr);
    ellipse(head.x, head.y, mass, mass);
  }
  boolean isFoodEatten(PVector food)
  {    
  if(PVector.dist(head,food)<10){
  return true;
  }
  return false;
  }
}
