class Food
{
  PVector location;
  int shape=1;
  int r;
  int g;
  int b;
  float mass;
  Food(float _x, float _y, float _m, int _s) {
    location=new PVector(_x, _y);
    mass=_m;
    r=(int)random(255);
    g=(int)random(255);
    b=(int)random(255);
    shape=_s;
  }

  void display() {
    stroke(0);
    fill(color(r, g, b));
    if (shape==1)
      ellipse(location.x, location.y, mass, mass);
    else if (shape==2)
      ellipse(location.x, location.y, mass, mass/2);
    else
      rect(location.x, location.y, mass, mass);
  }
}
