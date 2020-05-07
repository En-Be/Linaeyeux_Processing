class ObjetJourney extends Scale
{
  // left slider = movement speed
  // right slider = randomness of target
  // target set by touch input

  PVector target;
  int randomMax;
  
  ObjetJourney()
  {
    label = "journey";
    min = 0;
    max = 10;
    randomMax = 1000;
  }
  
  void SendValue(Objet o)
  {
    o.velocityLimit = value;
    o.acceleration = AdjustedTarget(o.position, o.target);
  }
  
  PVector AdjustedTarget(PVector p, PVector t)
  {

    PVector tR = t.copy();
    tR.x += (Randomness() * 10);
    tR.y += (Randomness() * 10);
    
    tR.sub(p);
    tR.setMag(0.5);

    
    return tR;
  }
  
  void Constraints()
  {
    value = constrain(value, min, max);
    randomness = constrain(randomness, 0, randomMax);
  }
}
