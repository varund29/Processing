function Food(_x,_y,_m,_s) 
{
  
 this.location=createVector(_x, _y);
   this.mass=_m;
   this.r=random(255);
   this.g=random(255);
   this.b=random(255);
   this.shape=_s;
}

 Food.prototype.display=function() {
    stroke(255);
    fill(color(this.r, this.g, this.b));
    if (this.shape==1)
      ellipse(this.location.x, this.location.y, this.mass, this.mass);
    else if (this.shape==2)
      ellipse(this.location.x, this.location.y, this.mass, this.mass/2);
    else
      rect(this.location.x, this.location.y, this.mass, this.mass);
  }
