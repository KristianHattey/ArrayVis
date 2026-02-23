class ArrayBox extends Button {
  
  
  Box[] containedBoxes;
  
  float lastBoxX = 0;
  
  int fillNumber = 0;
  
  boolean oncePerFrame = false;
  
  ArrayBox(float x, float y, float w, float h) {
   super(x, y, w, h, "ArrayBox");
   
   containedBoxes = new Box[5];
   
   for(int i = 0; i < containedBoxes.length; i++) {
     containedBoxes[i] = new Box(0, 0, 0, 0, "empty");
   }
   
   lastBoxX = x;
   
   fillNumber = 0;
  }
  
  
  void setup() {
    
  }
  
  void update() {
    
    oncePerFrame = true;
    
    if(oncePerFrame == true) {
    super.update();
    
     if(this.result == true) {
    print("box");
  }
 
  
    }
    
    
    oncePerFrame = false;
  
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
     containedBoxes[0].y = y;
     containedBoxes[0].draw();
     
      containedBoxes[1].x = x + 50;
     containedBoxes[1].y = y;
     containedBoxes[1].draw();
     
      containedBoxes[2].x = x + 100;
     containedBoxes[2].y = y;
     containedBoxes[2].draw();
     
      containedBoxes[3].x = x + 150;
     containedBoxes[3].y = y;
     containedBoxes[3].draw();
     
      containedBoxes[4].x = x + 200;
     containedBoxes[4].y = y;
     containedBoxes[4].draw();
     
     fill(0,0,0);
    if (tutorialScreen.pageNumber != 0) {
      textSize(18);
    text(containedBoxes[0].type + "  " + containedBoxes[1].type, x + 15, y+80);

    text(containedBoxes[2].type + "  " + containedBoxes[3].type, x + 130,y+80);

    text(containedBoxes[4].type,x+245,y+80);

    }
  }
  
  void addBox() {
    tutorialScreen.addBox();
    
  }
}
