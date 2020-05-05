class ObjetHue
{
 
  float value = 0;
  int min = 0;
  int max = 100;
  float randomness = 0;
  
  ObjetHue()
  {
    
  }
  
  void Update()
  {
    value = constrain(value, min, max);
    randomness = constrain(randomness, 0, max);

    for(Objet o : objets)
    { 
      o.hue = int(AdjustedValue());
    }
  }
  
  
  // ----
  
  
  void Up()
  {
    print("hue up");
    value += 0.1;
    if(value >= 100)
    {
      value = 0;
    }
  }
  
  void Down()
  {
    print("hue down");
    value -= 0.1;
    if(value <= 0.00)
    {
      value = 100;
    }
  }
  
  void RandomUp()
  {
    randomness += 0.1;
    print("hue randomness up");
  }
  
  void RandomDown()
  {
    randomness -= 0.1;
    print("hue randomness down");
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
