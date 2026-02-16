class HowToPlayScreen extends Screen {
 
  boolean active = true;
  
  Button tutorialB = new Button(200, 650, 175, 80);
  HowToPlayScreen(){
    
  }
  
  void setup() {
    
  }
  
  void draw() {
    fill(200, 200, 190);
    rect(200, 85, 400, 80);
    
    fill(0, 0, 0);
    textSize(48);
    text("How To Play", 275, 140);
    
    fill(200, 200, 190);
    rect(200, 200, 400, 400);
    
    fill(0, 0, 0);
    textSize(24);
    text("Press spawn button when array is ", 215, 225);
    text("empty to spawn crate.", 215, 250);
    
    text("This screen is a placeholder", 215, 300);
    
    
   fill(200, 200, 190);
   tutorialB.draw();
   fill(0, 0, 0);
   textSize(32);
   text("Tutorial", 235, 700);
  }
  
}
