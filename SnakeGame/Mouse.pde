static class Mouse {
  
  
  static PVector getDirection(float x,float y,PVector other){
    PVector location=new PVector(x,y);
  location.sub(other);
  location.normalize();  
  location.mult(.22);
  return location;
  }
  
   static PVector getDirection(PVector location,PVector other){    
  location.sub(other);
  location.normalize();  
  location.mult(.2);
  return location;
  }


}
