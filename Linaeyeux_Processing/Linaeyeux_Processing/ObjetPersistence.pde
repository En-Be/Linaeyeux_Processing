class ObjetPersistence
{
  int opacity = 50;
  
  int min = 0;
  int max = 100;
  
  ObjetPersistence()
  {
    
  }
  
  
  // ----
  
    
  void Update()
  {
    opacity = constrain(opacity, min, max);
    Display();
  }
  
  void Display()
  {
    fill(0, opacity);
    rect(0, 0, width, height);
  }
 
 
  // ----
  
  
  void Up()
  {
    print("persistence up");
    opacity -= 1;
  }
  
  void Down()
  {
    print("persistence down");
    opacity += 1;

  }
  
}
