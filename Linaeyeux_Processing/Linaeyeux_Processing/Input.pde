

// ---- ANDROID INPUT ---

void inputUpdate()
{
  if(touches.length > 0)
  {
    persistence.Up();
  }
  else
  {
    persistence.Down();
  }
  
  slider.Update();
  slider.Display();
  //print(slider.Value());
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
