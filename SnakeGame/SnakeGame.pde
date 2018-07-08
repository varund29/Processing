
color colr=255;
float len=150;
int space=20;
//int j=0;
Snake[] s=new Snake[50];
ArrayList<Food> f=new ArrayList<Food>();
PVector prev;
float mass=20;
void setup() {
  size(800, 800);
  for (int i =0; i<3; i++) {
    f.add(new Food(random(10, 750), random(10, 750), random(15, 30), (int)random(0, 3)));
  }

  for (int i =0; i<s.length; i++) {
    s[i]=new Snake(i*10, 300, mass);
    mass-=.4;
  }
}
void draw() {
  background(0);
  textSize(32);
  fill(255);
  if (f.size()==0)
    text("You won THE GAME", (width/2)-100, height/2);
  else
    text("Score:"+f.size(), 10, 30); 
  for (int j =0; j<s.length; j++) {
    if (j==0) {
      s[j].update();
      prev=s[j].head.copy();
      for (int i =0; i<f.size(); i++) {
        if (!s[0].isFoodEatten(f.get(i).location)) {
          f.get(i).display();
        } else {
          colr=color(f.get(i).r, f.get(i).g, f.get(i).b);
          f.remove(i);
        }
      }
    } else {
      s[j].update(prev);
      prev=s[j].head.copy();
    }
    s[j].colr=colr;
    s[j].display();
  }
}
