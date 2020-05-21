class Input
{
  boolean touchingButton;
  PVector target;
  
  Touch currentTouch;
  
  Input()
  {
    target = new PVector(width/2, height/2);
  }
  
  void Update()
  { 
    if(touches.length > 0)
    {
      if(currentTouch == null)
      {
        StartATouch();
      }
      else
      {
        currentTouch.Update();
      }      
    }
    else
    {
      if(currentTouch != null)
      {
        EndATouch();
      }
    }
    
  }
  

  // ----
  
  
  void StartATouch()
  {
    CheckIfTouchingAnyButtons();
    if(!touchingButton)
    {
      currentTouch = new Touch();
    }
  }
  
  void EndATouch()
  {    
    if(currentTouch.time < 15)
    {
      MakeOrDestroy();
    }
    touchingButton = false;
    ui.sliders.StopTouching();
    currentTouch = null;
  }
  
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
    if(!touchingButton && objets.size() < 12)
    {
      objets.add(new Objet(mouseX, mouseY, target));
    }
  }
}
