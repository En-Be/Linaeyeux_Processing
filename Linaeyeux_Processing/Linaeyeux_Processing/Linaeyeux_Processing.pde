
int opacity = 255;
int frameRateYPos;

ArrayList<Objet> objets = new ArrayList<Objet>();
int objetCount = 100;

void setup()
{
  fullScreen();
  frameRate(30);
  textSize(40);
  for(int i = 0; i < objetCount; i++)
  {
    objets.add(new Objet());
  }
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
  
  for(Objet o : objets)
  {
    o.update();
    o.edges();
    o.display();
  }
  
  frameRateYPos += 10;
  if(frameRateYPos > height)
  {
    frameRateYPos = 10;
  }
  text(frameRate, 10, frameRateYPos); 

}
