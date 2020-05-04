boolean touchingButton;
PVector target;

// ---- ANDROID INPUT --- // CONVERT TO TOUCHES

void inputUpdate()
{
  if(touches.length > 0)
  {
    if(!touchingButton)
    {
      target = new PVector(mouseX, mouseY);
      //objetTarget.SetObjetTarget(target);
    }
  }

}


// ----


void touchStarted()
{
  target = new PVector(width/2, height/2);
  CheckIfTouchingAnyButtons();
}

void touchEnded() 
{
  MakeOrDestroy();
  touchingButton = false;
  ui.sliders.StopTouching();
}


// ----

void CheckIfTouchingAnyButtons()
{
  if(!ui.sliders.CheckIfTouching() && !ui.toggles.CheckIfTouching())
  {
    touchingButton = false;
  }
  else
  {
    touchingButton = true; 
  }
}

void MakeOrDestroy()
{
  boolean DestroyedAnObjet = false;
  
  if(!touchingButton)
  {
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
  }
}

void MakeObjet()
{
  // if less than twelve objets
  if(!touchingButton && objets.size() < 12)
  {
    objets.add(new Objet(mouseX, mouseY, target));
  }
}
