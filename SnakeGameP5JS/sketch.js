var s=[];
var f=[];
var mass=20;
var prev;
var colr;
function setup() {
  createCanvas(500, 500);
  colr=color(255,255,255);
	for (var i =0; i<50; i++) {		
    s[i]=new Snake(i*10, 300, mass);
    mass-=0.4;    
  }
	
	for (var i =0; i<20; i++) {
    f[i]=new Food(random(10, width), random(10, height),
			random(15, 30), 1);
  }
}

function draw() {
   background(0);
  textSize(32);
  fill(255);
  if (f.length==0)
text("YOU WON THE GAME",
     ((width/2)-130), (height/3));
  else
    text("Score:"+f.length, 10, 30); 
 
	for (var j =0; j<s.length; j++) {
		//s[j].display();
       if (j==0) {
      s[j].updateMouse(mouseX,mouseY);
      prev=s[j].head.copy();
 
		for (var i =0; i<f.length; i++) {			
		//print(f.length);			
      
        if (!s[0].isFoodEatten(f[i].location)) {
    			f[i].display();
        } else {
          colr=color(f[i].r, f[i].g, f[i].b);
          f.splice(i,1);
        }
      }
	 } else {
      s[j].update(prev.x,prev.y);
      prev=s[j].head.copy();
    }
    s[j].colr=colr;
    s[j].display();
  }
}