class Input
{
  boolean touchingButton;
  PVector target;
  ArrayList<Touch> listedTouches = new ArrayList<Touch>();

  int pFrTouches = 0;
  
  Input()
  {

  }
  
  void Update()
  {
   
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
      if(!touchingButton)
      {
        target = new PVector(mouseX, mouseY);
        for(Objet o : objets)
        {
          o.target = target;
        }
      }
    } 
    
    Display();
  }
  
  void Display()
  {
    for(int t = 0; t < touches.length; t++)
    {
      print("touch " + touches[t].id + " location = " + int(touches[t].x) + ":" + int(touches[t].y));
    }
  }
  
  // ----
  
  
  void StartATouch()
  {
    target = new PVector(width/2, height/2);
    CheckIfTouchingAnyButtons();
    listedTouches.add(new Touch(IdentifyNewTouch()));
  }
  
  int IdentifyNewTouch()
  {
    int[] currentTouchIDs = new int[touches.length];
    int newTouch = 10;
    
    for(int t = 0; t < touches.length; t++)
    {
      currentTouchIDs[t] = (touches[t].id);
      print("touch id " + currentTouchIDs[t]);
    }
    
    for(int ct: currentTouchIDs)
    {
      boolean listed = false;
      
      if(listedTouches.size() == 0)
      {
        newTouch = ct;
      }
      
      for(Touch lt : listedTouches)
      {
        if(ct == lt.id)
        {
          listed = true;
        }
        
        if(!listed)
        {
          newTouch = ct;
        }
      }
    }
        
    print("new touch id = " + newTouch);
    return newTouch;
    
  }
  
  
  void EndATouch()
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
}
