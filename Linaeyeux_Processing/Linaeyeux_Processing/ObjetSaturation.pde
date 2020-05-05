class ObjetSaturation
{
 
  int value = 0;
  int min = 0;
  int max = 100;
  int randomness = 0;
  
  ObjetSaturation()
  {
    
  }
  
  void Update()
  {
    value = constrain(value, min, max);
    randomness = constrain(randomness, 0, max);

    for(Objet o : objets)
    { 
      o.saturation = int(AdjustedValue());
    }
  }
  
  
  // ----
  
  
  void Up()
  {
    print("saturation up");
    value += 1;
  }
  
  void Down()
  {
    print("saturation down");
    value -= 1;
  }
  
  void RandomUp()
  {
    randomness += 1;
    print("saturation randomness up");
  }
  
  void RandomDown()
  {
    randomness -= 1;
    print("saturation randomness down");
  }
  
  float Randomness()
  {
    float r = 0;
    r = random(randomness * -1, randomness);
    return r;
  }
  
  float AdjustedValue()
  {
    float r = Randomness();
    float valR = value + r;
    valR = constrain(valR, min, max);
    return valR;
  }
}
