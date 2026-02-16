class TutorialScreen {
  
 boolean active = false; 
 
 Button next = new Button(700, 720, 50, 50, "next");
 
 Button last = new Button(600, 720, 50, 50, "last");
 
 Button spawner = new Button(30, 30, 175, 50, "spawn");
 
 Button restart = new Button(720, 30, 50, 50, "restartTut");
 
 Button[] buttons;
 
 Box[] boxes = new Box[1];
 
 Box[] array1;
 
 
 TutorialScreen() {
 for(int i = 0; i < boxes.length; i++) {
    this.boxes[i] = new Box(0, 0, 0, 0); 
   }
 }
 
 void setup() {
   
 
 }
 
 void update() {
    next.update();
   last.update();
   spawner.update();
   restart.update();
 }
 
 void draw() {
   fill(200, 200, 190);
   
  
   
   
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
   
   
   Box b = new Box(200, 200, 50, 50);
   
   for(int i = 0; i < boxes.length; i++) {
    boxes[i] = b; 
   }
 }
}
