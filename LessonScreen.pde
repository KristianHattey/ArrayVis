class LessonScreen {

 
  boolean active = false;
  
  int pageNumber = 0;
  
  
  
   Button next = new Button(200, 675, 50, 50, "lessNext");
 
 Button last = new Button(100, 675, 50, 50, "lessLast");
  
  
  LessonScreen(){
    
  }
  
  void setup() {
    
  }
  
  void update(){
    next.update();
    last.update();
  }
  
  void draw() {
   
   
    fill(200, 200, 190);
    rect(200, 85, 400, 80);
    
     if(pageNumber == 1) {
      
    
    fill(200, 200, 190);
    rect(100, 50, 600, 600);
    
     
    fill(0, 0, 0);
    textSize(48);
    text("1D ARRAY", 300, 100);
    
    
    fill(0, 0, 0);
    textSize(24);
    text("Welcome to Array Shipping Co. ", 125, 225);
    text("A 1D array, is much like a crate of things. ", 125, 250);
    text("Try to fill these crates with the right toys.", 125, 275);
    text("Check this page to review your objective", 125, 300);
    text("Objective: " + order1, 125, 350);
    
    
    
    
    
   fill(200, 200, 190);
    next.draw();
    last.draw();
   fill(0, 0, 0);
   
    }
    
    if(pageNumber == 2) {
    
    
    
    fill(200, 200, 190);
    rect(100, 50, 600, 600);
    
     
    fill(0, 0, 0);
    textSize(48);
    text("2D ARRAY", 300, 100);
    
    
    fill(0, 0, 0);
    textSize(24);
    
    text("A 2D Array is like a shipping crate full of crates.", 125, 250);
    text("Try to fill a bigger order!", 125, 275);
    text("Check this page to review your objective", 125, 300);
    text("Objective: " + order2, 125, 350);
    
    
    
    
    
   fill(200, 200, 190);
    next.draw();
    last.draw();
   fill(0, 0, 0);
   
    }
  }
  
}
  
