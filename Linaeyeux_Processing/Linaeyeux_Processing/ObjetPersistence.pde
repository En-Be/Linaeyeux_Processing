class ObjetPersistence extends Scale
{
  
  ObjetPersistence()
  {
    label = "ephemerality";
    min = 0;
    max = 100;
    value = max;
  }

  void Update()
  {
    Constraints();
    Display();
  }
  
  void Display()
  { 
    fill(0, 0, 0, AdjustedValue());
    rectMode(CORNER);
    rect(0, 0, width, height);
  }

}
