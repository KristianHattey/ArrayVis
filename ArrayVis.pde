
float dt = 0;
float prevTime = 0;
float gameTime = dt/1000;


 HowToPlayScreen howtoPlay = new HowToPlayScreen();
 TutorialScreen tutorialScreen = new TutorialScreen();



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
  
}

void switchScreens(String type) {
  
  if (type == "redo") {
      tutorialScreen.active = false;
    }
  
  if (type == "titleToTutorial") {
     if (howtoPlay.active == true) {
      howtoPlay.active = false;
      
      tutorialScreen.active = true;
     
  }
  
  if (type == "tutorialToTutorial") {
    
    if(tutorialScreen.active == true) {
      tutorialScreen.active = false;
    
    }
    
    
   
    
    
  }
  
  }
  
}
