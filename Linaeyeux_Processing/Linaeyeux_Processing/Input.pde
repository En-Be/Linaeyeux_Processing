

// ---- ANDROID INPUT ---

void touchStarted()
{
  
}


void touchEnded() 
{
  objets.add(new Objet(mouseX, mouseY));
}


void inputUpdate()
{
  if(touches.length > 0)
  {
    print("touch location: X = " + int(touches[0].x) + ", y = " + int(touches[0].y));
  }
  
  if(!mousePressed)
  {
    persistence.Down();
  }
  else
  {
    persistence.Up();
  }
  
}
