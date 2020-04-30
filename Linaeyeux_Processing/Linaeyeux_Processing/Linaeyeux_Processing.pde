
int opacity = 255;

DebugDisplay debugDisplay = new DebugDisplay();

ArrayList<Objet> objets = new ArrayList<Objet>();
int objetCount = 100;

void setup()
{
  fullScreen();
  frameRate(30);
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
  
  debugDisplay.Update();
}
