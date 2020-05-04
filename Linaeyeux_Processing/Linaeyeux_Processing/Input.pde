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
  boolean DestroyedAnObjet = false;
  
  for(int i = objets.size() -1; i >= 0; i--) // iterate backwards incase we delete any objets from the list
  {
    Objet o = objets.get(i);
    
    if(o.CheckIfTouching())
    {
      o.Destroy();
      DestroyedAnObjet = true;
    }
  }
  
  if(!DestroyedAnObjet)
  {
    MakeObjet();
  }
  
  settingTarget = false;
  slider.StopTouching();
}

void MakeObjet()
{
  // if less than twelve objets
  if(settingTarget && objets.size() < 12)
  {
    objets.add(new Objet(mouseX, mouseY, target));
  }
}
