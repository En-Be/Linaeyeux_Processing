Ball b1;
Ball b2;
Ball b3;
Ball b4;
Ball b5;
Ball b6;
Ball b7;
int opacity = 255;
int frameRateYPos;

void setup()
{
  fullScreen();
  b1 = new Ball();
  b2 = new Ball();
  b3 = new Ball();
  b4 = new Ball();
  b5 = new Ball();
  b6 = new Ball();
  b7 = new Ball();
  frameRate(30);
  textSize(40);
}

void draw()
{
  if(!mousePressed)
  {
    opacity += 1;
  }
  else
  {
    opacity -= 1;
  }
  
  opacity = constrain(opacity, 0, 255);

  fill(255, opacity);
  rect(0, 0, width, height);
  
  b1.update();
  b1.edges();
  b1.display();
  
  b2.update();
  b2.edges();
  b2.display();
  
  b3.update();
  b3.edges();
  b3.display();
  
  b4.update();
  b4.edges();
  b4.display();
  
  b5.update();
  b5.edges();
  b5.display();
  
  b6.update();
  b6.edges();
  b6.display();
  
  b7.update();
  b7.edges();
  b7.display();
  
  frameRateYPos += 10;
  if(frameRateYPos > height)
  {
    frameRateYPos = 10;
  }
  text(frameRate, 10, frameRateYPos); 

}
