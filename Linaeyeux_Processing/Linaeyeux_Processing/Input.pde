boolean settingTarget;
PVector target;

// ---- ANDROID INPUT ---

void inputUpdate()
{
  if(touches.length > 0)
  {
    if(settingTarget)
    {
      target = new PVector(mouseX, mouseY);
      SetObjetTarget(target);
    }
  }
  else
  {
    //
  }
  
  slider.Update();
  slider.Display();
}

// ----

void touchStarted()
{
  target = new PVector(width/2, height/2);
  if(!slider.CheckIfTouching())
  {
    //print("not touching slider button");
    settingTarget = true;
  }
  else
  {
    //print("touching slider button");  
  }
}


void touchEnded() 
{
  // if less than ten objets
  if(settingTarget)
  {
    objets.add(new Objet(mouseX, mouseY, target));
  }
  settingTarget = false;
  slider.StopTouching();
}
