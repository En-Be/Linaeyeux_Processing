class ObjetTarget
{
  
  ObjetTarget()
  {
    
  }
  
  void SetObjetTarget(PVector target)
  {  
      for(Objet o : objets)
      {
        o.target = target;
      }
  }
  
  void ObjetTargetRandom(boolean b)
  {
      for(Objet o : objets)
      {
        o.randomTarget = b;
      }
  }
  
}
