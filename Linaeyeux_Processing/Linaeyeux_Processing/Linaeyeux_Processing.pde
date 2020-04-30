
// Scales
DebugDisplay debugDisplay = new DebugDisplay();
Persistence persistence = new Persistence();

// Objets
ArrayList<Objet> objets = new ArrayList<Objet>();
int objetCount = 0;

void setup()
{
  fullScreen();
  frameRate(30);
}

void mouseClicked()
{
  objets.add(new Objet(mouseX, mouseY));
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
    o.Update();
  }
  
  debugDisplay.Update();
}
