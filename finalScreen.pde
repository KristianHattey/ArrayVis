class FinalScreen extends Screen {
 
  boolean active = true;
  
  Button sandB = new Button(200, 650, 175, 80, "sandboxButton");
  FinalScreen(){
    
  }
  
  void setup() {
    
  }
  
  void update(){
    sandB.update();
  }
  
  void draw() {
    fill(200, 200, 190);
    rect(200, 85, 400, 80);
    
    fill(0, 0, 0);
    textSize(48);
    text("Congratulations!", 275, 140);
    
    fill(200, 200, 190);
    rect(200, 200, 400, 400);
    
    fill(0, 0, 0);
    textSize(24);
    text("You learned what an array is.", 215, 225);
    text("Feel free to experience the sandbox by pressing below!", 215, 250);
    
    
    
    
    
   fill(200, 200, 190);
   sandB.draw();
   fill(0, 0, 0);
   textSize(32);
   text("Tutorial", 235, 700);
  }
  
}
