class ObjetShape extends Scale
{  
  ArrayList<PVector> circle = new ArrayList<PVector>();

  ArrayList<PVector> AdjustedShape = new ArrayList<PVector>();

  int size;
  
  ObjetShape()
  {
    label = "shape";
    min = 0;
    max = 100;
    size = 100;
    MakeCircle();
  }
  
  void SendValue(Objet o)
  {
    o.shape = circle;
  }
  
  void MakeCircle()
  {
    for (int angle = 0; angle < 360; angle += 9) {
      // Note we are not starting from 0 in order to match the
      // path of a circle.  
      PVector v = PVector.fromAngle(radians(angle-135));
      v.mult(100);
      circle.add(v);
      // Let's fill out morph ArrayList with blank PVectors while we are at it
      //morph.add(new PVector());
    }
  }
}
