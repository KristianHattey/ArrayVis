
float dt = 0;
float prevTime = 0;
float gameTime = dt/1000;




 HowToPlayScreen howtoPlay = new HowToPlayScreen();
 TutorialScreen tutorialScreen = new TutorialScreen(1);
 OrderScreen orderScreen = new OrderScreen(1);
 
 String order1 = "4x Cars, 1x Bear";
 String order2 = "15x Bear, 5x Cars, 5x Trains";


boolean transitionedScreen = false;

boolean boxMode = false;


void setup() {
  size(800, 800);
 
}



void draw() {

  background(100, 100, 100);
  if (howtoPlay.active == true) {
    howtoPlay.update();

    howtoPlay.draw();
  }
  
  if (tutorialScreen.active == true) {
    tutorialScreen.update();
    tutorialScreen.draw();
  }
  
  if (orderScreen.active == true) {
    orderScreen.update();
    orderScreen.draw();
  }
  
  
  
}

void switchScreens(String type, int screenNumber) {
  
  if (type == "redoTutorial" && transitionedScreen == false) {
    
     
     tutorialScreen = new TutorialScreen(screenNumber);
     tutorialScreen.active = true;
     
     orderScreen.active = false;
     
     transitionedScreen = false;
     
    }
  
  else if (type == "titleToTutorial") {
     if (howtoPlay.active == true) {
      howtoPlay.active = false;
      
      tutorialScreen.active = true;
     
     transitionedScreen = false;
    }
  }
  
  else if (type == "tutorialTitle") {
     if (howtoPlay.active == false) {
      howtoPlay.active = true;
      
      tutorialScreen.active = false;
     
     transitionedScreen = false;
    }
  }
  
   else if (type == "order") {
    
    if(tutorialScreen.active == true) {
      tutorialScreen.active = false;
    
      }
      
      orderScreen.active = true;
      
      transitionedScreen = false;
    
    }
  
}

void keyPressed() {
  
  if(key == 'b') {
    if(boxMode == true) {
      boxMode = false;
      if(tutorialScreen.active) {
         tutorialScreen.arrayBoxes[0].drawMode = "container";
         tutorialScreen.arrayBoxes[0].draggable = true;
         tutorialScreen.arrayBoxes[0].altFunct = false; 
      }
    }
    else {
      boxMode = true;
       if(tutorialScreen.active) {
         tutorialScreen.arrayBoxes[0].drawMode = "container";
         tutorialScreen.arrayBoxes[0].draggable = true;
         tutorialScreen.arrayBoxes[0].altFunct = false;
       }
       
    }
    
   
    
    print(boxMode);
  }
  
}
