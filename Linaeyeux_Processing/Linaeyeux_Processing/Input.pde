

// ---- ANDROID INPUT ---

void inputUpdate()
{
  if(touches.length > 0)
  {
    //objetPersistence.Up();
  }
  else
  {
    //objetPersistence.Down();
  }
  
  slider.Update();
  slider.Display();
}

// ----

void touchStarted()
{
  slider.CheckIfTouching();
}


void touchEnded() 
{
  objets.add(new Objet(mouseX, mouseY));
  slider.StopTouching();
}
