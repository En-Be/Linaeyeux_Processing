class ObjetVelocity extends Scale
{
  
   ObjetVelocity()
   {
     label = "velocity";
     min = 0;
     max = 1000;
   }
   
  void SendValue(Objet o)
  {
    o.velocityLimit = AdjustedValue();
  }
  
}
