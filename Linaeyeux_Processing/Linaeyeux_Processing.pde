void setup()
{
  fullScreen(); 
  background(255);
  noStroke();
  fill(0);
  ellipseMode(CENTER);
  textSize(32);
  frameRate(30);
}

int opacity = 255;
int frameRateYPos = 10;

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
  fill(0);
  
  circle(random(width), random(height),10);
  
  frameRateYPos += 10;
  if(frameRateYPos >= height)
  {
    frameRateYPos = 10;
  }
  rotate(radians(-50));
  text(frameRate, 10, frameRateYPos); 
}
