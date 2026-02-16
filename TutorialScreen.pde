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
 
 
 TutorialScreen() {
 for(int i = 0; i < boxes.length; i++) {
    this.boxes[i] = new Box(0, 0, 0, 0, "free"); 
   }
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
   
 }
 
 
 void spawnBox() {
   
   
   Box b = new Box(150, 200, 50, 50, "free");
   
   for(int i = 0; i < boxes.length; i++) {
    boxes[i] = b; 
   }
 }
 
 void addBox() {
    for(int i = 0; i < boxes.length; i++) {
       
      
      Box b = boxes[i];
      for(int j = 0; j < arrayBox.containedBoxes.length; j++) {
        if(arrayBox.containedBoxes[j].type == "empty") {
          
         b.dragging = false;
         b.draggable = false;
         b.type = "contained";
         arrayBox.containedBoxes[j] = b;

       
       
       break;
      }
      
      print("nuh uh");
     }
      
       
   }
 }
}
