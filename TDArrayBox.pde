class TDArrayBox extends Button {
  
  ArrayBox[] containedArrays;
  
  TDArrayBox(float x, float y, float w, float h) {
   super(x, y, w, h, "TDArrayBox");
   
   containedArrays = new ArrayBox[5];
   
   for(int i = 0; i < containedArrays.length; i++) {
     containedArrays[i] = new ArrayBox(0, 0, 0, 0);
     containedArrays[i].drawMode = "container";
   }
   
   
   
   
  }
  
  void setup() {
    
  }
  
  void update() {
    super.update();

  }
  
  void draw() {
    
    fill(super.baseColor);
     
     
     rect(x, y, w, h);
    
    if(containedArrays[0].w != 0) {
      containedArrays[0].x = x;
     containedArrays[0].y = y;
     containedArrays[0].draw();
    }
    
    if(containedArrays[1].w != 0) {
      containedArrays[1].x = x + 75;
     containedArrays[1].y = y;
     containedArrays[1].draw();
    }
    
    if(containedArrays[2].w != 0) {
      containedArrays[2].x = x + 150;
     containedArrays[2].y = y;
     containedArrays[2].draw();
    }
    
    if(containedArrays[3].w != 0) {
      containedArrays[3].x = x + 225;
     containedArrays[3].y = y;
     containedArrays[3].draw();
    }
    
    
    
     
     fill(0,0,0);
    if (tutorialScreen.pageNumber != 0) {
      textSize(18);
    

    }   
  }
  
}
