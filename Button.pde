class Button {
  
  
  
  
  public boolean result = false;
  
  boolean isHovered = false;
  
  boolean isPressedButton = false;
  
  boolean altFunct = false;
  
  float x, y, w, h;
  
  color normalColor = 50, hoveredColor = 60, pressedColor = 180;
  color baseColor;
  
  String buttonType;
  
  float halfH, halfW;
  
  
  Button(float x, float y, float w, float h, String type) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    
    buttonType = type;
    
    baseColor = normalColor;
    
    halfW = w/2;
    halfH = h/2;
  }
  
  void setup() {
    
  }
  
  
 void update() {
   
   
   result = false;
   
  if(mouseX > x  && mouseX < x + w && mouseY > y && mouseY < y+h && altFunct == false) {
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
      
      
      
      if(mousePressed && (mouseButton == LEFT) && isPressedButton == false) {
        baseColor = pressedColor;
        
        isPressedButton = true;
        
        if(buttonType == "tutorialButton") {
         switchScreens("titleToTutorial"); 
        }
        
        if (buttonType == "next") {
          switchScreens("tutorialToTutorial");
        }
        
        if (buttonType == "spawn") {
          tutorialScreen.spawnBox();
          
        }
        if (buttonType == "ArrayBox" && altFunct == false) {
         
        tutorialScreen.addBox();
        
        if(tutorialScreen.active == true && tutorialScreen.arrayBox.containedBoxes[4].type != "empty") {
        tutorialScreen.arrayBox.altFunct = true;
        }
  
          
        }
        if (buttonType == "restartTut") {
          switchScreens("redoTutorial");
          
        }
        
        
        
        print("true");
        return true;
      }
    
    }
    
    if (!mousePressed) {
      isPressedButton = false;
      return false;
    }
    
    return false;
  }
  
  
}
