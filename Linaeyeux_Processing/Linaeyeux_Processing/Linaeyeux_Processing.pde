
DebugDisplay debugDisplay = new DebugDisplay();
Persistence persistence = new Persistence();

ArrayList<Objet> objets = new ArrayList<Objet>();
int objetCount = 50;

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
    persistence.Down();
  }
  else
  {
    persistence.Up();
  }
  
  persistence.Update();

  
  for(Objet o : objets)
  {
    o.update();
    o.edges();
    o.display();
  }
  
  debugDisplay.Update();
}
