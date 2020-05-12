class ObjetShape extends Scale
{  
  ArrayList<PVector> circle = new ArrayList<PVector>();

  ArrayList<PVector> AdjustedShape = new ArrayList<PVector>();

  float size;
  float pSize;
  
  ObjetShape()
  {
    label = "shape";
    min = 0;
    max = 100;
    size = 10;
    pSize = 10;
    MakeCircle();
  }
  
  void SendValue(Objet o)
  {
    o.shape = circle;
  }
  
  void MakeCircle()
  {
    circle = new ArrayList<PVector>();
    for (int angle = 0; angle < 360; angle += 2) {
      // Note we are not starting from 0 in order to match the
      // path of a circle.  
      PVector v = PVector.fromAngle(radians(angle-135));
      v.mult(size);
      circle.add(v);
      // Let's fill out morph ArrayList with blank PVectors while we are at it
      //morph.add(new PVector());
    }
  }
  
  void MakeSquare()
  {
    // 360 / 2, 180 / 4, 45 points per side
  }
  
  void SetValue(float f)
  {
    size = f;
    if(size != pSize)
    {
      MakeCircle();
      pSize = size;
    }
  }
}
