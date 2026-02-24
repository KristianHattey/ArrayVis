class TDArrayBox extends Button {
  
  ArrayBox[] containedArrays;
  
  int cars, trains, bears = 0;
  
    boolean uncounted = true;
  
  TDArrayBox(float x, float y, float w, float h) {
   super(x, y, w, h, "TDArrayBox");
   
   containedArrays = new ArrayBox[5];
   
   for(int i = 0; i < containedArrays.length; i++) {
     containedArrays[i] = new ArrayBox(0, 0, 0, 0);
     containedArrays[i].drawMode = "container";
     containedArrays[i].type = "empty";
   }
   
   
   
   
   
  }
  
  void setup() {
    
  }
  
  void update() {
    super.update();
    
    tallyCount();
  

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
    
    
    text("cars x" + cars, 275, 575);
    text("bears x" + bears, 350, 575);
    text("trains x" + trains, 425,575);
     
     fill(0,0,0);
    if (tutorialScreen.pageNumber != 0) {
      textSize(18);
    

    }   
  }
  
  void tallyCount() {
    if(uncounted == true) {
       uncounted = false;
       
       cars = 0; 
       trains = 0;
       bears = 0;
       
       for(int i = 0; i < containedArrays.length; i++) {
         
         for(int j = 0; j < containedArrays[i].containedBoxes.length; j++) {
          
          if(containedArrays[i].containedBoxes[j].type == "bear") {
            bears += 1;
            
          }
          else if(containedArrays[i].containedBoxes[j].type == "car") {
            cars += 1;
  
          }
  
          else if(containedArrays[i].containedBoxes[j].type == "train") {
            trains += 1;
  
          }
         }
     }
     
    }
   
    
  }
  
}
