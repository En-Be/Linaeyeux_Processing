class Persistence
{
  int opacity = 255;
  
  int min = 0;
  int max = 255;
  
  Persistence()
  {
    
  }
  
  // ----
    
  void Update()
  {
    opacity = constrain(opacity, 0, 255);
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
    opacity--;
  }
  
  void Down()
  {
    opacity++;
  }
  
  int convertToScale(int percentage)
  {
    int ratio = max / 100;
    return percentage * ratio;
  }
}
