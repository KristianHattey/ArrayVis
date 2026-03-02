class FinalScreen extends Screen {
 
  boolean active = false;
  
  Button sandB = new Button(200, 650, 175, 80, "sandButton");
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
    text("Congratulations!", 230, 140);
    
    fill(200, 200, 190);
    rect(200, 200, 400, 400);
    
    fill(0, 0, 0);
    textSize(24);
    text("You learned what an array is.", 215, 225);
    text("Feel free to experience the sandbox ", 215, 250);
     text("by pressing the button below!", 215, 275);
    
    
    
    
    
   fill(200, 200, 190);
   sandB.draw();
   fill(0, 0, 0);
   textSize(32);
   text("Sandbox", 235, 700);
  }
  
}
