class Input
{
  boolean touchingButton;
  PVector target;
  
  int pFrTouches = 0;
  int touchLength = 0;
  
  Input()
  {

  }
  
  void Update()
  {
    //print(touches.length);
    if(touches.length > pFrTouches)
    {
      StartATouch();
      pFrTouches = touches.length;
    }
    
    if(touches.length < pFrTouches)
    {
      EndATouch();
      pFrTouches = touches.length;
  
    }
    
    if(touches.length > 0)
    {
      if(touches.length == 1 && !touchingButton && touchLength > 15)
      {
        target = new PVector(mouseX, mouseY);
        for(Objet o : objets)
        {
          o.target = target;
        }
      }
      
      touchLength++;
      print(touchLength);
    }
    else
    {
      touchLength = 0; 
    }
    
    Display();
  }
  
  void Display()
  {
    for(int t = 0; t < touches.length; t++)
    {
      //print("touch " + touches[t].id + " location = " + int(touches[t].x) + ":" + int(touches[t].y));
    }
  }
  

  // ----
  
  
  void StartATouch()
  {
    target = new PVector(width/2, height/2);
    CheckIfTouchingAnyButtons();
  }
  
  void EndATouch()
  {    
    if(touchLength < 15)
    {
      MakeOrDestroy();
    }
    touchingButton = false;
    ui.sliders.StopTouching();
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
    // if less than twelve objets
    if(!touchingButton && objets.size() < 12)
    {
      objets.add(new Objet(mouseX, mouseY, target));
    }
  }
}
