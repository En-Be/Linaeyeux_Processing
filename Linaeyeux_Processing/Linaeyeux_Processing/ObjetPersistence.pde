class ObjetPersistence extends Scale
{
  
  ObjetPersistence()
  {
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
    rect(0, 0, width, height);
  }

}
