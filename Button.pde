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
   if(buttonType == "spawn" || buttonType == "pushArray") {
     normalColor = color(230, 230, 230);
     hoveredColor = color(255, 255, 255);
     pressedColor = color(255, 255, 255);
     image(box, x+ w/4, y);
     
     
     
   }
   
    if(buttonType == "restartTut" || buttonType == "restartSand") {
     normalColor = color(230, 230, 230);
     hoveredColor = color(255, 255, 255);
     pressedColor = color(255, 255, 255);
     image(re, x, y);
     
     
     
   }
   
   if(buttonType == "next" || buttonType == "orderNext" || buttonType == "lessNext" ) {
     normalColor = color(230, 230, 230);
     hoveredColor = color(255, 255, 255);
     pressedColor = color(255, 255, 255);
     image(ne, x, y);
     
     
     
   }
   
   if(buttonType == "changeSize" ) {
     normalColor = color(230, 230, 230);
     hoveredColor = color(255, 255, 255);
     pressedColor = color(255, 255, 255);
     image(size, x+40, y);
     
     
     
   }
   
   if(buttonType == "mode" ) {
     normalColor = color(230, 230, 230);
     hoveredColor = color(255, 255, 255);
     pressedColor = color(255, 255, 255);
     image(mode, x, y);
     
     
     
   }
   
   if(buttonType == "last" || buttonType == "orderLast" || buttonType == "lessLast" ) {
     normalColor = color(230, 230, 230);
     hoveredColor = color(255, 255, 255);
     pressedColor = color(255, 255, 255);
     image(la, x, y);
     
     
     
   }
   
   if(buttonType == "restartTut" || buttonType == "restartSand") {
     normalColor = color(230, 230, 230);
     hoveredColor = color(255, 255, 255);
     pressedColor = color(255, 255, 255);
     image(re, x, y);
     
     
     
   }
  }
  
 boolean isPressed() {
    if(isHovered) {
      
      
      
      if(mousePressed && (mouseButton == LEFT) && isPressedButton == false && prevLeftClick == false) {
        baseColor = pressedColor;
        leftClick = true;
        isPressedButton = true;
        
        if(buttonType == "tutorialButton") {
         switchScreens("titleToLesson", 1); 
        }
        
        if(buttonType == "sandButton") {
         switchScreens("sandScreen", 1); 
        }
        
        if (buttonType == "orderNext") {
          
          if(orderScreen.active && orderScreen.orderScreenN == 1 && orderScreen.order1Correct == true) {
            
            //switchScreens("redoTutorial",2);
            
            switchScreens("tutToLesson", 2);
            
            
          }
          
          if(orderScreen.active && orderScreen.orderScreenN == 2 && orderScreen.order2Correct == true) {
            
            switchScreens("redoTutorial",3);
            
            
          }
          
          if(orderScreen.active && orderScreen.orderScreenN == 3 && orderScreen.order3Correct == true) {
            
            switchScreens("endscreen",0);
            
            
          }
          
         
        }
        
        if (buttonType == "lessNext") {
          
          if(lessonScreen.active && lessonScreen.pageNumber == 1) {
            
            switchScreens("redoTutorial",1);
            
            
          }
          
          if(lessonScreen.active && lessonScreen.pageNumber == 2) {
            
            switchScreens("redoTutorial",2);
            
            
          }
          
          
          
         
        }
        
        if (buttonType == "next") {
          
          
          
         if (tutorialScreen.active && tutorialScreen.pageNumber == 1) {
            
           
            switchScreens("order",1);
            
            orderScreen.tallyOrder();
            
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
            
            switchScreens("tutToLesson", 1);
            
          }
          
      
          
          
          if (tutorialScreen.active && tutorialScreen.pageNumber == 2 && orderScreen.active == false) {
            
            switchScreens("tutToLesson", 2);
            
          }
          
           if (tutorialScreen.active && tutorialScreen.pageNumber == 3 && orderScreen.active == false) {
            
            switchScreens("order", 2);
            
          }
          
          if (sandScreen.active) {
            
            switchScreens("Title",0);
            
          }
          
        }
        
        if (buttonType == "lessLast") {
          
          
            if(lessonScreen.active && lessonScreen.pageNumber == 1) {
            
            switchScreens("Title",0);
            
            
          }
          
          if(lessonScreen.active && lessonScreen.pageNumber == 2) {
            
            switchScreens("order",1);
            
            
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
            orderScreen.uncounted = true;
            switchScreens("redoTutorial", 1);
            
          }
            
        }
        
        if (buttonType == "mode") {
          
          if (sandScreen.active && sandScreen.modeType == 1) {
            
            sandScreen.modeType = 2;
            
           
            
          }
          
          else if (sandScreen.active && sandScreen.modeType == 2) {
            
            sandScreen.modeType = 1;
            
            
          }
          
          print(sandScreen.modeType);
          
        }
        
         if (buttonType == "changeSize") {
          
          if (sandScreen.currentSize == 5) {
            
            
            sandScreen.currentSize = 1;
            
            sandScreen.changeSize(sandScreen.currentSize);
           
            
          }
          
          else {
            sandScreen.currentSize++;
            
            sandScreen.changeSize(sandScreen.currentSize);
          }
          
         
          
          print(sandScreen.modeType);
          
        }
        
        if (buttonType == "spawn") {
          tutorialScreen.spawnBox();
          
        }
        
         if (buttonType == "pushArray") {
          
          if (sandScreen.active) {
            
            sandScreen.spawnBox();
            
            sandScreen.addBox();
            
            
          }
        }
        
        if (buttonType == "fillArray") {
          
          if (sandScreen.active) {
            
            sandScreen.spawnBox();
            
            sandScreen.fillArray();
            
            
          }
        }
        
        if (buttonType == "type") {
          
          if (sandScreen.active) {
            
            
            
            
            
           

              if(sandScreen.chosenType ==   "car") { 
              sandScreen.chosenType = "bear";
               }

                else if(sandScreen.chosenType ==   "bear") { 
                  sandScreen.chosenType = "train";
               }
            
               else if(sandScreen.chosenType ==   "train") { 
                  sandScreen.chosenType = "car";
               }
             
            
            
          }
        }
        
        
          
        if (buttonType == "ArrayBox" && altFunct == false && boxMode == false && tutorialScreen.active) {
         
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
        
        if (buttonType == "restartSand") {
          switchScreens("resetSand", sandScreen.modeType);
          
        }
        
        if (buttonType == "TDArrayBox" && altFunct == false && tutorialScreen.active == true) {
         
          
        tutorialScreen.addArrayBox();
        tutorialScreen.twoDArray.uncounted = true;
        tutorialScreen.twoDArray.tallyCount();
        
        
        if(tutorialScreen.active == true && tutorialScreen.twoDArray.containedArrays[3].type != "empty") {
        tutorialScreen.twoDArray.altFunct = true;
        }
        
          }
          
          
          if (buttonType == "TDArrayBox" && altFunct == false && sandScreen.active == true) {
         
          
        sandScreen.addArrayBox();
        sandScreen.twoDArray.uncounted = true;
        sandScreen.twoDArray.tallyCount();
        
        
        if(sandScreen.active == true && tutorialScreen.twoDArray.containedArrays[3].type != "empty") {
        sandScreen.twoDArray.altFunct = true;
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
