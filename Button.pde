class Button {
  
  
  
  
  public boolean result = false;
  
  boolean isHovered = false;
  
  float x, y, w, h;
  
  color normalColor = 50, hoveredColor = 60, pressedColor = 180;
  color baseColor;
  
  String buttonType;
  
  
  Button(float x, float y, float w, float h, String type) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    
    buttonType = type;
    
    baseColor = normalColor;
  }
  
  void setup() {
    
  }
  
  
 void update() {
   
  if(mouseX > x-w && mouseX < x + w && mouseY > y-h && mouseY < y + h) {
      isHovered = true;
      baseColor = hoveredColor;
      
      result = isPressed();
    }
    
    else {
      isHovered = false;
      baseColor = normalColor;
           
    } 
    
    
    
 }
  
  void draw() {
    fill(baseColor);
   rect(x, y, w, h); 
  }
  
 boolean isPressed() {
    if(isHovered) {
      if(mousePressed && (mouseButton == LEFT)) {
        baseColor = pressedColor;
        
        if(buttonType == "tutorialButton") {
         switchScreens("titleToTutorial"); 
        }
        
        if (buttonType == "next") {
          switchScreens("tutorialToTutorial");
        }
        
        if (buttonType == "spawn") {
          tutorialScreen.spawnBox();
          
        }
        
        if (buttonType == "restartTut") {
          switchScreens("redoTutorial");
          
        }
        
        
        
        print("true");
        return true;
      }
    
    }
    
    return false;
  }
  
  
}
