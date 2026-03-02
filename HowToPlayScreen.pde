class HowToPlayScreen extends Screen {
 
  boolean active = true;
  
  Button tutorialB = new Button(200, 650, 175, 80, "tutorialButton");
  Button sandB = new Button(425, 650, 175, 80, "sandButton");
  HowToPlayScreen(){
    
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
    
    fill(0, 0, 0);
    textSize(48);
    text("How To Play", 275, 140);
    
    fill(200, 200, 190);
    rect(200, 200, 400, 400);
    
    fill(0, 0, 0);
    textSize(18);
    text("Spawn(spawn button)/drag crates/", 300, 275);
    text("activate buttons", 300, 300);
    
    text("Toggle box mode(2D Arrays Levels)", 300, 375);
    
    
    
    image(mouse, 190, 225);
    image(bKey, 190, 325);
    
    
   fill(200, 200, 190);
   tutorialB.draw();
   sandB.draw();
   fill(0, 0, 0);
   textSize(32);
   text("Tutorial", 235, 700);
   
   text("Sandbox", 455, 700);
  }
  
}
