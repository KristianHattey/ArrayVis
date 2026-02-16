class HowToPlayScreen extends Screen {
 
  boolean active = true;
  
  
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
  }
  
}
