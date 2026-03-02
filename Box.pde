class Box extends Button {
  
  
  float drawx, drawy, draww, drawh;
  
  
  
  
  boolean dragging = false;
  boolean draggable = true;
  
  boolean moving = true; 
  float targetLocationY = 200; 
  
  String type = "";
  String subType = "";
  String storedType = "car";
  
  Box(float x, float y, float w, float h, String status) {
    super(x, y, w, h, "Box");
    
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    
    type = status;
    
    this.normalColor = color(255, 255, 255);
    if(this.type == "car") {
      this.normalColor = color(100, 0, 0);
      this.hoveredColor = color(255, 0, 0);
      this.baseColor = this.normalColor;
    }
    else if(this.type == "bear") {
      this.normalColor = color(0, 255, 0);
      this.hoveredColor = color(0, 255, 0);
      this.baseColor = this.normalColor;
    }
    else if(this.type == "train") {
      this.normalColor = color(0, 0, 100);
      this.hoveredColor = color(0, 0, 255);
      
      this.baseColor = color(0, 0, 100);
    }
  }
  
  void setup() {
    this.baseColor = this.normalColor;
  }
  
  void update() {
    
    super.update();
    if(this.result == true && draggable == false && this.type != "empty" && tutorialScreen.boxes[0].dragging == true) {
    insertBox(tutorialScreen.boxes[0]);
    print("insertable");
  }
    else if(this.result == true && draggable == true) {
    dragging = true;
  }
  
  
    this.normalColor = color(255, 255, 255);
    if(this.type == "car") {
      this.normalColor = color(100, 0, 0);
      this.hoveredColor = color(255, 0, 0);
      
    }
    else if(this.type == "bear") {
      this.normalColor = color(0, 255, 0);
      this.hoveredColor = color(0, 255, 0);
      
    }
    else if(this.type == "train") {
      this.normalColor = color(0, 0, 100);
      this.hoveredColor = color(0, 0, 255);
      
      
    }
    
    
    if(this.y == targetLocationY) moving = false;
    if(moving == true) this.y+=10;
    
    
  
  
  }
  
  void draw() {
    fill(this.baseColor);
     
     
     if (dragging == true) {
       rect(mouseX-w/2, mouseY-h/2, w, h); 
       
       if(type == "bear") image(bear,mouseX-w/2, mouseY-h/2); 
        if(type == "car") image(car,mouseX-w/2, mouseY-h/2); 
       if(type == "train") image(train,mouseX-w/2, mouseY-h/2); 
     }
     
     else {
       rect(x, y, w, h); 
       if(type == "bear") image(bear,x, y); 
       if(type == "car") image(car,x, y); 
       if(type == "train") image(train,x, y); 
     }
  }
  
  void insertBox(Box b) {
    updateColor();
  this.baseColor = b.baseColor;
  this.hoveredColor = b.hoveredColor;
  this.type = b.type;
   b.draggable = false;
   b.dragging = false;
   
   if(tutorialScreen.active == true) {
     tutorialScreen.boxes[0] = new Box(0, 0, 0, 0, "free"); 
     
     tutorialScreen.arrayBoxes[0].targetBox = this;
   }
   
   
  }
  
  void updateColor() {
   this.baseColor = color(255, 255, 255);
   
   this.hoveredColor = color(255, 255, 255);
  }
}
