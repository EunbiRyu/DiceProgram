//Die dice;
void setup()
{
  size(500,500);
  noLoop();
  background(#144981);
}
void draw()
{
  int sum = 0;
  for(int i=15; i<450; i+=60){
    for(int j=15;j<450; j+=60){
      Die dice = new Die(i,j);
      dice.roll();
      dice.show();
      sum += dice.numDots; 
    }
  }
  fill(255);
  text("Total: " +sum,12,12);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  //member variable declarations here
  int numDots, myX, myY, fillCol;
  Die(int x, int y) //constructor
  {
  //variable initializations here
    numDots = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }
  void roll()
  {
   numDots = (int)(Math.random()*6)+1;
  }
  void show()
  {
  //your code here
    noStroke();
    int fillCol = (int)(Math.random()*100+155);
    fill(fillCol);
    rect(myX, myY, 50, 50);
    fill(#144981);
    rect(12, 1, 61, 11);
    fill(0);
    if (numDots == 6){
      ellipse(10+myX, 10+myY, 9, 9); //top L corner
      ellipse(10+myX, 25+myY, 9, 9);
      ellipse(10+myX, 40+myY, 9, 9);
      ellipse(40+myX, 10+myY, 9, 9); //top R corner
      ellipse(40+myX, 25+myY, 9, 9);
      ellipse(40+myX, 40+myY, 9, 9);
    } else if (numDots == 5){
      ellipse(10+myX, 10+myY, 9, 9); //top L corner
      ellipse(10+myX, 40+myY, 9, 9);
      ellipse(40+myX, 10+myY, 9, 9); //top R corner
      ellipse(40+myX, 40+myY, 9, 9);
      ellipse(25+myX, 25+myY, 9, 9); // middle
    } else if (numDots == 4){
      ellipse(10+myX, 10+myY, 9, 9); //top L corner
      ellipse(10+myX, 40+myY, 9, 9);
      ellipse(40+myX, 10+myY, 9, 9); //top R corner
      ellipse(40+myX, 40+myY, 9, 9);
    } else if (numDots == 3){
      ellipse(10+myX, 10+myY, 9, 9); //top L corner
      ellipse(25+myX, 25+myY, 9, 9);
      ellipse(40+myX, 40+myY, 9, 9);
    } else if (numDots == 2){
      ellipse(10+myX, 10+myY, 9, 9); //top L corner
      ellipse(40+myX, 40+myY, 9, 9);
    } else {
      ellipse(25+myX, 25+myY, 9, 9);
    };
    
  }
}
