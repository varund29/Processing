class Bob
{
  PVector origin;  
  PVector location;  
  float len;
  float mass;
  float angle=PI/4;
  float acc=0;
  float vel=0;


  Bob(float _x, float _y, float _len, float _m) {
    len=_len;
    origin=new PVector(_x, _y);    
    location=new PVector(_x, _len);    
    mass=_m;
  }
  void update() {
    location.x= origin.x+(len)*sin(angle);
    location.y= origin.y+(len)*cos(angle);

    acc=-0.01*sin(angle);
    vel+=acc;
    angle+=vel;
    vel*=0.99;
  }
  void display() {
    line(origin.x, origin.y, location.x, location.y);
    fill(200);
    ellipse(location.x, location.y, mass, mass);
  }
}
