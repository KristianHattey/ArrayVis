class TutorialScreen {
  
 boolean active = false; 
 
 Button next = new Button(700, 720, 50, 50, "next");
 
 Button last = new Button(600, 720, 50, 50, "last");
 
 Button spawner = new Button(30, 30, 175, 50, "spawn");
 
 Button restart = new Button(720, 30, 50, 50, "restartTut");
 
 ArrayBox arrayBox = new ArrayBox(250, 250, 300, 100);
 
 Button[] buttons;
 
 Box[] boxes = new Box[1];
 
 Box[] array1;
 
 int randomChance = 0;
 
 int pageNumber = 0;
 
 
 TutorialScreen(int page) {
 for(int i = 0; i < boxes.length; i++) {
    this.boxes[i] = new Box(0, 0, 0, 0, "free"); 
   }
   
   pageNumber = page;
 }
 
 void setup() {
   
 
 }
 
 void update() {
    next.update();
   last.update();
   spawner.update();
   restart.update();
   arrayBox.update();
 }
 
 void draw() {
   fill(200, 200, 190);
   
  
   
   arrayBox.draw();
   next.draw();
   last.draw();
   spawner.draw();
   restart.draw();
   
   
   for(int i = 0; i < boxes.length; i++) {
     
     boxes[i].update();
    boxes[i].draw();
    
   }
   
   for(int i = 0; i < arrayBox.containedBoxes.length; i++) {
     
     arrayBox.containedBoxes[i].update();
    arrayBox.containedBoxes[i].draw();
    
   }
   
 }
 
 
 void spawnBox() {
   
   randomChance = int(random(4));
   Box b = new Box(150, 200, 50, 50, "car");
   if (randomChance == 1) {
   b.type = "car";
   }
   else if (randomChance == 2) {
    b.type = "bear";
   }
   else if (randomChance == 3) {
    b.type = "train";
   }
   
   for(int i = 0; i < boxes.length; i++) {
    boxes[i] = b; 
   }
   
   print(randomChance);
 }
 
 void addBox() {
   
    Box b = boxes[0];
    for(int i = 0; i < arrayBox.containedBoxes.length; i++) {
      
      if (arrayBox.containedBoxes[i].type == "empty" && b.w != 0) {
        arrayBox.containedBoxes[i] = b;
        print("can fill");
        break;
      }
      else if (arrayBox.containedBoxes[i].w != 0){
        print("full");
      }
      
      
    
    }
      
      
      b.draggable = false;
      b.dragging = false;
      this.boxes[0] = new Box(0, 0, 0, 0, "free"); 
      
       
   }
 }
