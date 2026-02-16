class Button {
  
  
  
  boolean pressed = false;
  
  boolean unpressed = false;
  
  float x, y, w, h = 0;
  
  Button(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void setup() {
    
  }
  
  void draw() {
   rect(x, y, w, h); 
  }
}
