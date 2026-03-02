class LessonScreen {

 
  boolean active = false;
  
  int pageNumber = 0;
  
  Button tutorialB = new Button(200, 650, 175, 80, "tutorialButton");
  Button sandB = new Button(425, 650, 175, 80, "sandButton");
  
  
  LessonScreen(){
    
  }
  
  void setup() {
    
  }
  
  void update(){
    tutorialB.update();
    sandB.update();
  }
  
  void draw() {
   
   
    fill(200, 200, 190);
    rect(200, 85, 400, 80);
    
     if(pageNumber == 1) {
      fill(0, 0, 0);
    textSize(48);
    text("How To Play", 275, 140);
    
    fill(200, 200, 190);
    rect(100, 50, 600, 600);
    
    fill(0, 0, 0);
    textSize(24);
    text("Welcome to Array Shipping Co. ", 125, 225);
    text("An array, is much like a crate of things. ", 125, 250);
    text("Your job is to fill these 'crates' with the right toys.", 150, 275);
    
    text("1D Arrays are simple.", 125, 300);
    
    text("In a shipping company, they are like a single crate of toys.", 125, 325);
    
    
    
    text("Give this first order a go!", 125, 350);
    
    
   fill(200, 200, 190);
   tutorialB.draw();
   sandB.draw();
   fill(0, 0, 0);
   textSize(32);
   text("Tutorial", 235, 700);
    }
  }
  
}
  
