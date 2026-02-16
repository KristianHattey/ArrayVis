class Box extends Button {
  
  
  float drawx, drawy, draww, drawh;
  
  
  boolean dragging = false;
  
  Box(float x, float y, float w, float h) {
    super(x, y, w, h, "Box");
    
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  void setup() {
    
  }
  
  void update() {
    
    super.update();
    if(this.result == true) {
    dragging = true;
  }
  
  }
  
  void draw() {
    fill(super.baseColor);
     
     
     if (dragging == true) {
       rect(mouseX-w/2, mouseY-h/2, w, h); 
     }
     
     else {
       rect(x, y, w, h); 
     }
  }
  
}
