class ArrayBox extends Button {
  
  
  Box[] containedBoxes;
  
  float lastBoxX = 0;
  
  ArrayBox(float x, float y, float w, float h) {
   super(x, y, w, h, "ArrayBox");
   
   containedBoxes = new Box[5];
   
   for(int i = 0; i < containedBoxes.length; i++) {
     containedBoxes[i] = new Box(0, 0, 0, 0);
   }
   
   lastBoxX = x;
  }
  
  
  void setup() {
    
  }
  
  void update() {
    
    super.update();
     if(this.result == true) {
    print("box");
  }
  
  }
  
  void draw() {
    fill(super.baseColor);
     
     
     rect(x, y, w, h);
     
     
     //for(int i = 0; i < containedBoxes.length; i++) {
     //  Box b = containedBoxes[i];
     //  b.x = lastBoxX + 50;
       
     //  lastBoxX = b.x;
     //  fill(255,255,255);
     //  b.draw();
       
     //}
     containedBoxes[0].x = x;
     containedBoxes[0].draw();
     
     
  }
  
  void addBox() {
    tutorialScreen.addBox();
  }
}
