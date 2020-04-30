

// ---- ANDROID INPUT ---

void touchStarted()
{
  // send location to button to see if it's on it
  button.Update();
}


void touchEnded() 
{
  objets.add(new Objet(mouseX, mouseY));
  for(Objet o : objets)
  {
    o.randomTarget = true;
  }
}


void inputUpdate()
{
  if(touches.length > 0)
  {
    //print("touch location: X = " + int(touches[0].x) + ", y = " + int(touches[0].y));
  }
  
  button.Display();
  
  if(!mousePressed)
  {
    persistence.Down();
  }
  else
  {
    persistence.Up();
  }  
}
