class ObjetPersistence
{
  int opacity = 50;
  
  int min = 0;
  int max = 100;
  
  int randomness = 0;
  
  ObjetPersistence()
  {
    
  }
  
  
  // ----
  
    
  void Update()
  {
    opacity = constrain(opacity, min, max);
    randomness = constrain(randomness, 0, max);
    Display();
  }
  
  void Display()
  {
    float r = Randomness();
    float opR = opacity + r;
    opR = constrain(opR, min, max);
    
    fill(0, opR);
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
  
  void RandomUp()
  {
    print("persistence randomness up");
    randomness += 1;
  }
  
  void RandomDown()
  {
    print("persistence randomness down");
    randomness -= 1;
  }
  
  float Randomness()
  {
    float r = 0;
    r = random(randomness * -1, randomness);
    return r;
  }
}
