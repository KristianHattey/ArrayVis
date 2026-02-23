class OrderScreen {
  
 int orderScreenN = 0;
 
 boolean active = false;
 
 
 Button next = new Button(700, 100, 50, 50, "orderNext");
 
 Button last = new Button(600, 100, 50, 50, "last");
 
 int bears = 0;
 int cars = 0;
 int trains = 0;
 boolean uncounted = true;
 boolean order1Correct = false;
 
 OrderScreen(int orderN) {
   orderScreenN = orderN;
 }
 
 void setup() {
   
 }
 
 void update() {
   tallyOrder();
   
   next.update();
   last.update();
 }
 
 void draw() {
   
   fill(0, 0, 0);
  text("cars x" + cars, 200, 150);
  text("bears x" + bears, 200, 200);
  text("trains x" + trains, 200,250);
  
  if (orderScreenN == 1) {
  text("Order: 4x cars, 1x bear", 200, 400);
  
    if (cars == 4 && bears == 1) {
    text("Order correct!", 200, 500);
    order1Correct = true;
    }
    else {
    text("Please try again", 200, 500);
    }
  }
  
   next.draw();
   last.draw();
 }
 
  void tallyOrder() {
    if(uncounted == true) {
       uncounted = false;
      for(int i = 0; i < tutorialScreen.arrayBox.containedBoxes.length; i++) {
        if(tutorialScreen.arrayBox.containedBoxes[i].type == "bear") {
          bears += 1;
          
        }
        else if(tutorialScreen.arrayBox.containedBoxes[i].type == "car") {
          cars += 1;

        }

        else if(tutorialScreen.arrayBox.containedBoxes[i].type == "train") {
          trains += 1;

        }
      }
    }
   
    
  }
}
