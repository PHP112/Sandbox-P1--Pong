/*To Do List
 Symmetry of Scoreboards and Right Paddle
 */

//Global Variables
//Best Practice: initialization on similar lines
float xBall, yBall, ballDiameter;
float xLeftPaddle, yLeftPaddle, widthPaddle, heightPaddle, xRightPaddle, yRightPaddle;
float xLeftScore, yLeftScore, xRightScore, yRightScore, widthScore, heightScore;
float x1LeftNet, y1LeftNet, x2LeftNet, y2LeftNet;
float x1RightNet, y1RightNet, x2RightNet, y2RightNet;
float x1MiddleLine, y1MiddleLine, x2MiddleLine, y2MiddleLine;
Boolean geometryCheck=false;

void setup() {
  //Geomtery Communication and Variables for GUI Ratios
  size(500, 1000); //Landscape-orientation, fullScreen(); //displayWidth, displayHeight
  population(); //One purpose of developer-written functions
  textSetup();
  //
}//End setup

void draw() {
  if (geometryCheck == false) displayGeometryCheck();
  if ( leftPaddleSpeed>0 && rightPaddleSpeed>0) {
    gameOn();
  } else {
    println("For Left Paddle Speed, Press n (NOOB), r (regular), g (god-mode)");
    println("For Right Paddle Speed, Press m (NOOB), t (regular), h (god-mode)");
  }
}//End draw

void keyPressed() { //Listener
  rightPaddleKeyPressed();
  leftPaddleKeyPressed();
}//End keyPressed

void mousePressed() {
}//End mousePressed
