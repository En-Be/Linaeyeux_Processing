class ObjetHue extends Scale
{
  
  ObjetHue()
  {
    label = "hue";
    min = 0;
    max = 100;
  }
  
  void SendValue(Objet o)
  {
    o.hue = AdjustedValue();
  }
  
  float AdjustedValue()
  {
    float r = Randomness();
    float valR = value + r;

    if(valR > max)
    {
      valR -= max; 
    }
    else if(valR < min)
    {
      valR += max;
    }
    return valR;
  }
  
  void Constraints()
  {
    if(value > max)
    {
      value -= max; 
    }
    else if(value < min)
    {
      value += max;
    }
    randomness = constrain(randomness, 0, max);
  }
}
