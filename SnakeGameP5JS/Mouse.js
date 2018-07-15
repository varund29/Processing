
  function getDirectionHead(x,y,other){
    var location=createVector(x,y);
  location.sub(other);
  location.normalize();  
  location.mult(.22);
  return location;
  }
  
   function getDirection(x,y,other){    
     var location=createVector(x,y);
  location.sub(other);
  location.normalize();  
  location.mult(.2);
  return location;
  }


