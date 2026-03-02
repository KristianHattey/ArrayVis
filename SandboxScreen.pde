class SandboxScreen {
  
 boolean active = false; 
 
 
 
 Button last = new Button(600, 720, 50, 50, "last");
 
 Button spawner = new Button(550, 100, 125, 60, "pushArray");
 
 Button filler = new Button(675, 100, 75, 60, "fillArray");
 
 Button type = new Button(250, 100, 300, 60, "type");
 
 Button restart = new Button(720, 30, 50, 50, "restartSand");
 
 Button size = new Button(125, 100, 125, 60, "changeSize");
 
 Button modeToggle = new Button(50, 100, 75, 60, "mode");
 
 
 
 
 
 Button[] buttons;
 
 Box[] boxes = new Box[1];
 
 Box[] array1;
 
 ArrayBox [] arrayBoxes = new ArrayBox[1];
 
 int randomChance = 0;
 
 int modeType = 0;
 
 TDArrayBox twoDArray = new TDArrayBox(250, 450, 300, 100);
 
 String chosenType = "car";
 
 int currentSize = 5;
 
 
 SandboxScreen(int mode) {
 for(int i = 0; i < boxes.length; i++) {
    this.boxes[i] = new Box(0, 0, 0, 0, "free"); 
   }
   
   for(int i = 0; i < boxes.length; i++) {
    this.arrayBoxes[i] = new ArrayBox(250, 250, 300, 100);
   }
   
   modeType = mode;
 }
 
 void setup() {
   
 
 }
 
 void update() {
    
   filler.update();
   type.update();
   last.update();
   spawner.update();
   restart.update();
   size.update();
   modeToggle.update();
  
   this.arrayBoxes[0].update();
   
   if(modeType != 1) {
     twoDArray.update();
   }
   
   if(chosenType == "car") {
     type.normalColor = color(100, 0, 0);
      type.hoveredColor = color(255, 0, 0);
   }
   
    
    else if(chosenType == "bear") {
      type.normalColor = color(0, 255, 0);
      type.hoveredColor = color(0, 255, 0);
      
    }
    else if(chosenType == "train") {
      type.normalColor = color(0, 0, 100);
      type.hoveredColor = color(0, 0, 255);
      
      
   
  
  
  }
 }
 
 void draw() {
   
   background(100, 100, 100);
   fill(200, 200, 190);
   
  
   
 
 filler.draw();
   type.draw();
   last.draw();
   spawner.draw();
   restart.draw();
   size.draw();
   modeToggle.draw();
   
   
   if(modeType != 1) {
     twoDArray.draw();
   }
   
   this.arrayBoxes[0].draw();
   
   
   for(int i = 0; i < boxes.length; i++) {
     
     boxes[i].update();
    boxes[i].draw();
    
   }
   
   for(int i = 0; i < this.arrayBoxes[0].containedBoxes.length && this.arrayBoxes[0].drawMode != "container"; i++) {
     
     this.arrayBoxes[0].containedBoxes[i].update();
    this.arrayBoxes[0].containedBoxes[i].draw();
    
   }
   
 }
 
 
 void spawnBox() {
   
   boxes[0].storedType = chosenType;
   Box b = new Box(150, 200, 50, 50, boxes[0].storedType);
   b.moving = false;
   
  
   
   for(int i = 0; i < boxes.length; i++) {
    boxes[i] = b; 
   }
   
   
 }
 
 void newArrayBox() {
  for(int i = 0; i < boxes.length; i++) {
    this.arrayBoxes[i] = new ArrayBox(250, 250, 300, 100); 
    this.arrayBoxes[i].altFunct = false;
    boxMode = false;
    this.arrayBoxes[i].drawMode = "";
    
   } 
   
   
 }
 
 void addBox() {
   
    Box b = boxes[0];
    b.moving = false;
    for(int i = 0; i < this.arrayBoxes[0].containedBoxes.length; i++) {
      
      if (this.arrayBoxes[0].containedBoxes[i].type == "empty" && b.w != 0) {
        this.arrayBoxes[0].containedBoxes[i] = b;
        print("can fill");
        break;
      }
      else if (this.arrayBoxes[0].containedBoxes[i].w != 0){
        print("full");
      }
      
      
    
    }
      
      
      b.draggable = false;
      b.dragging = false;
      this.boxes[0] = new Box(0, 0, 0, 0, "free"); 
      
       
   }
   
   void fillArray() {
   
    Box b = boxes[0];
    b.moving = false;
    for(int i = 0; i < this.arrayBoxes[0].containedBoxes.length; i++) {
      
      if (this.arrayBoxes[0].containedBoxes[i].type == "empty" && b.w != 0) {
        this.arrayBoxes[0].containedBoxes[i] = b;
        print("can fill");
        
      }
      else if (this.arrayBoxes[0].containedBoxes[i].w != 0){
        print("full");
      }
      
      
    
    }
      
      
      b.draggable = false;
      b.dragging = false;
      this.boxes[0] = new Box(0, 0, 0, 0, "free"); 
      
       
   }
   
   void addArrayBox() {
   
    ArrayBox b = arrayBoxes[0];
    for(int i = 0; i < twoDArray.containedArrays.length; i++) {
      
      if (twoDArray.containedArrays[i].w == 0 && b.w != 0) {
        twoDArray.containedArrays[i] = b;
        b.drawMode = "container";
        print("can fill");
        break;
      }
      else if (twoDArray.containedArrays[i].w != 0){
        print("full");
      }
      
      
    
    }
      
      
      b.draggable = false;
      b.dragging = false;
     newArrayBox();
       
   }
   
   void changeSize(int size) {
     
     arrayBoxes[0].containedBoxes = new Box[size];
     for(int i = 0; i < arrayBoxes[0].containedBoxes.length; i++) {
    this.arrayBoxes[0].containedBoxes[i] = new Box(0, 0, 0, 0, "empty"); 
   }
   
   }
 }
 
