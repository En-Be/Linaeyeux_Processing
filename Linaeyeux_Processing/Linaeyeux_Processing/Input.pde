

// ---- ANDROID INPUT ---

void touchStarted()
{
  // send location to button to see if it's on it
  //slider.Update();
  slider.CheckIfTouching();
}


void touchEnded() 
{
  objets.add(new Objet(mouseX, mouseY));
  //for(Objet o : objets)
  //{
  //  o.randomTarget = true;
  //}
  slider.StopTouching();
}


void inputUpdate()
{
  if(touches.length > 0)
  {
    //print("touch location: X = " + int(touches[0].x) + ", y = " + int(touches[0].y));
    persistence.Up();
  }
  else
  {
    persistence.Down();
  }
  slider.Update();
  slider.Display();
}
