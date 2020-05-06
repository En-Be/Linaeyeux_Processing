class Scale
{
  String label;
  int value = 0;
  int min;
  int max;
  int randomness = 0;
  
  Scale()
  {
    min = 0;
    max = 100;
  }
  
  void Update()
  {
    Constraints();
    
    for(Objet o : objets)
    { 
      SendValue(o);
    }
  }
  
  void SendValue(Objet o)
  {
    // eg ---- o.saturation = int(AdjustedValue());
    print("need an overwrite method for " + 0);
  }
  
  
  // ----
   
   
  float AdjustedValue()
  {
    float r = Randomness();
    float valR = value + r;
    valR = constrain(valR, min, max);
    return valR;
  }
  
  float Randomness()
  {
    float r = 0;
    r = random(randomness * -1, randomness);
    return r;
  }
  
  void Constraints()
  {
    value = constrain(value, min, max);
    randomness = constrain(randomness, 0, max);
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
  
}
