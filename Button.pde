class Button {
  
  
  
  int screenNumber = 1;
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
      
      
      
      if(mousePressed && (mouseButton == LEFT) && isPressedButton == false && prevLeftClick == false) {
        baseColor = pressedColor;
        leftClick = true;
        isPressedButton = true;
        
        if(buttonType == "tutorialButton") {
         switchScreens("titleToTutorial", 1); 
        }
        
        if (buttonType == "orderNext") {
          
          if(orderScreen.active && orderScreen.orderScreenN == 1) {
            
            switchScreens("redoTutorial",2);
            
            
          }
          
          if(orderScreen.active && orderScreen.orderScreenN == 2) {
            
            switchScreens("redoTutorial",3);
            
            
          }
          
          
          
         
        }
        
        if (buttonType == "next") {
          
          
          
         if (tutorialScreen.active && tutorialScreen.pageNumber == 1) {
            
            switchScreens("order",1);
            
          }
          
          if (tutorialScreen.active && tutorialScreen.pageNumber == 2) {
            orderScreen.bears = tutorialScreen.twoDArray.bears;
            orderScreen.cars = tutorialScreen.twoDArray.cars;
            orderScreen.trains = tutorialScreen.twoDArray.trains;
            switchScreens("order", 2);
            
          }
          
          if (tutorialScreen.active && tutorialScreen.pageNumber == 3) {
            orderScreen.bears = tutorialScreen.twoDArray.bears;
            orderScreen.cars = tutorialScreen.twoDArray.cars;
            orderScreen.trains = tutorialScreen.twoDArray.trains;
            switchScreens("order", 3);
            
          }
        }
        
        if (buttonType == "last") {
          
          
          
         if (tutorialScreen.active && tutorialScreen.pageNumber == 1) {
            
            switchScreens("tutorialTitle",0);
            
          }
          
      
          
          
          if (tutorialScreen.active && tutorialScreen.pageNumber == 2 && orderScreen.active == false) {
            
            switchScreens("order", 1);
            
          }
          
           if (tutorialScreen.active && tutorialScreen.pageNumber == 3 && orderScreen.active == false) {
            
            switchScreens("order", 2);
            
          }
          
        }
        
        if (buttonType == "orderLast") {
              if(orderScreen.active && orderScreen.orderScreenN == 2 && tutorialScreen.active == false) {
            
            switchScreens("redoTutorial", 2);
            
            
          }
          
          if(orderScreen.active && orderScreen.orderScreenN == 3 && tutorialScreen.active == false) {
            
            switchScreens("redoTutorial", 3);
            
            
          }
          
          if(orderScreen.active && orderScreen.orderScreenN == 1 && tutorialScreen.active == false) {
            
            switchScreens("redoTutorial", 1);
            
          }
            
        }
        
        if (buttonType == "spawn") {
          tutorialScreen.spawnBox();
          
        }
        if (buttonType == "ArrayBox" && altFunct == false && boxMode == false) {
         
        tutorialScreen.addBox();
        
        if(tutorialScreen.active == true && tutorialScreen.arrayBoxes[0].containedBoxes[4].type != "empty") {
        tutorialScreen.arrayBoxes[0].altFunct = true;
        }
        
       
  
          
        }
        
        else if(buttonType == "ArrayBox" && boxMode == true) {
          if (tutorialScreen.active && tutorialScreen.pageNumber != 1) {
            
            
            
          }
        }
        
        if (buttonType == "restartTut") {
          switchScreens("redoTutorial", tutorialScreen.pageNumber);
          
        }
        
        if (buttonType == "TDArrayBox" && altFunct == false) {
         
          
        tutorialScreen.addArrayBox();
        tutorialScreen.twoDArray.uncounted = true;
        tutorialScreen.twoDArray.tallyCount();
        
        
        if(tutorialScreen.active == true && tutorialScreen.twoDArray.containedArrays[3].type != "empty") {
        tutorialScreen.twoDArray.altFunct = true;
        }
        
          }
        
        
        
        
        
        print("true");
        return true;
      }
    
    }
    
    if (!mousePressed) {
      isPressedButton = false;
      leftClick = false;
      return false;
    }
    
    return false;
  }
  
  
}
