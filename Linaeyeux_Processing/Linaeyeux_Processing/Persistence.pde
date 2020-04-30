class Persistence
{
  int opacity = 255;

  Persistence()
  {
    
  }
  
  void Up()
  {
    opacity--;
  }
  
  void Down()
  {
    opacity++;
  }
  
  void Update()
  {
    opacity = constrain(opacity, 0, 255);
    Display();
  }
  
  void Display()
  {
    fill(255, opacity);
    rect(0, 0, width, height);
  }
  
}
