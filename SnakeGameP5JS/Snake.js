
function  Snake(_x, _y,  _m) {    
   this.head=createVector(_x, _y);
   this.acc=createVector(0, 0);
   this.vel=createVector(0, 0);
   this.mass=_m;
   this.colr=255;  
}
  
  Snake.prototype.updateMouse=function(x,y) {
    var dir=getDirectionHead(x, y, this.head);
   //head.add(vel.add(acc.add(dir)));
   this.head.add(this.vel.add((dir)));
   this.vel.limit(1);
   this.acc.mult(0);
  }
  Snake.prototype.update=function(x,y) {
    var dir=getDirection(x,y,this.head);
   //head.add(vel.add(acc.add(dir)));
   this.head.add(this.vel.add((dir)));
   this.vel.limit(1);
   this.acc.mult(0);
  }
  Snake.prototype.display=function() {   
    fill(this.colr);
    stroke(0);
    //println(colr);
    ellipse(this.head.x, this.head.y, this.mass, this.mass);   
  }
  Snake.prototype.isFoodEatten=function(food)
  {    
  if(p5.Vector.dist(this.head,food)<10){
  return true;
  }
  return false;
  }

  