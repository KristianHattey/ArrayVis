
float dt = 0;
float prevTime = 0;
float gameTime = dt/1000;


PImage mouse;
PImage bKey;
PImage car;
PImage train;
PImage bear;
PImage box;
PImage bg;
PImage re;
PImage la;
PImage ne;
PImage size;
PImage mode;
PImage fill;

 HowToPlayScreen howtoPlay = new HowToPlayScreen();
 TutorialScreen tutorialScreen = new TutorialScreen(1);
 OrderScreen orderScreen = new OrderScreen(1);
 FinalScreen finalScreen = new FinalScreen();
 SandboxScreen sandScreen = new SandboxScreen(1);
 LessonScreen lessonScreen = new LessonScreen();
 
 String order1 = "4x Cars, 1x Bear";
 String order2 = "15x Bear, 2x Cars, 3x Trains";
  String order3 = "7x Bear, 5x Cars, 8x Trains";


boolean transitionedScreen = false;

boolean boxMode = false;

boolean leftClick;

boolean prevLeftClick;


void setup() {
  size(800, 800);
 
 mouse = loadImage("Mouse_Left_Key_Dark.png");
 bKey = loadImage("B_Key_Dark.png");
 car = loadImage("car.png");
 bear = loadImage("bear.png");
 train = loadImage("train.png");
 box = loadImage("boxspawner.png");
 bg = loadImage("bg.png");
 re = loadImage("re.png");
 ne = loadImage("ne.png");
 la = loadImage("la.png");
 size = loadImage("size.png");
 mode = loadImage("mode.png");
 fill = loadImage("fill.png");
}



void draw() {

  background(100, 100, 100);
  image(bg,0, 0);
  if (howtoPlay.active == true) {
    howtoPlay.update();

    howtoPlay.draw();
  }
  
  if (finalScreen.active == true) {
    finalScreen.update();

    finalScreen.draw();
  }
  
  if (tutorialScreen.active == true) {
    tutorialScreen.update();
    tutorialScreen.draw();
  }
  
  if (orderScreen.active == true) {
    orderScreen.update();
    orderScreen.draw();
  }
  
  if (sandScreen.active == true) {
    sandScreen.update();
   sandScreen.draw();
  }
  
   if (lessonScreen.active == true) {
    lessonScreen.update();
   lessonScreen.draw();
  }
  
}

void switchScreens(String type, int screenNumber) {
  
  if (type == "redoTutorial" && transitionedScreen == false) {
    
     transitionedScreen = true;
     
     tutorialScreen = new TutorialScreen(screenNumber);
     
     lessonScreen.active = false;
     orderScreen.active = false;
     tutorialScreen.active = true;
     transitionedScreen = false;
     
    }
  
  else if (type == "titleToTutorial") {
     if (howtoPlay.active == true) {
      howtoPlay.active = false;
      
      tutorialScreen.active = true;
     
     transitionedScreen = false;
    }
  }
  
  else if (type == "titleToLesson") {
     if (howtoPlay.active == true) {
      howtoPlay.active = false;
      lessonScreen.pageNumber = screenNumber;
      lessonScreen.active = true;
     
     transitionedScreen = false;
    }
  }
  
  
  
  else if (type == "tutToLesson") {
     if (lessonScreen.active == false) {
       
       lessonScreen.pageNumber = screenNumber;
      lessonScreen.active = true;
      
      
      
      tutorialScreen.active = false;
      orderScreen.active = false;
     
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
  
  else if (type == "Title") {
     if (howtoPlay.active == false) {
      howtoPlay.active = true;
      
      sandScreen.active = false;
      
      lessonScreen.active = false;
     
     transitionedScreen = false;
    }
  }
  
   else if (type == "order") {
    
     transitionedScreen = true;
     
    if(tutorialScreen.active == true) {
      tutorialScreen.active = false;
    
      }
      
      lessonScreen.active = false;
      
      orderScreen.orderScreenN = screenNumber;
      orderScreen.active = true;
      
      transitionedScreen = false;
    
      tutorialScreen.active = false;
    
    }
    
     else if (type == "endscreen") {
     finalScreen.active = true;
     
     orderScreen.active = false;
  }
  
   else if (type == "sandScreen") {
      howtoPlay.active = false;
      finalScreen.active = false;
     sandScreen.active = true;
  }
  
  else if (type == "resetSand") {
      sandScreen = new SandboxScreen(screenNumber);
     sandScreen.active = true;
  }
  
}

void keyPressed() {
  
  if(key == 'b') {
    if(boxMode == true) {
      boxMode = false;
      if(tutorialScreen.active) {
        tutorialScreen.arrayBoxes[0].drawMode = "";
         tutorialScreen.arrayBoxes[0].draggable = false;
         if(tutorialScreen.arrayBoxes[0].containedBoxes[4].type != "empty") tutorialScreen.arrayBoxes[0].altFunct = true;
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

void mousePressed(){
if(mouseButton == LEFT) leftClick = true;

}

void mouseReleased(){
if (mouseButton == LEFT) { 
    leftClick = false;
    prevLeftClick = false;
  }
}
