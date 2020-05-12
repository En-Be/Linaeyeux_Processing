class ObjetShape extends Scale
{  
  ArrayList<PVector> circle = new ArrayList<PVector>();
  ArrayList<PVector> square = new ArrayList<PVector>();

  ArrayList<PVector> adjustedShape = new ArrayList<PVector>();

  float size;
  
  ObjetShape()
  {
    label = "shape";
    min = 0;
    max = 100;
    size = 10;
    randomnessMax = 1000;
    MakeShape();
  }
  
  void SendValue(Objet o)
  {
    size = o.size;
    MakeShape();    
    o.shape = adjustedShape;
  }
  
  void MakeCircle()
  {
    circle = new ArrayList<PVector>();
    for (int angle = 0; angle < 360; angle += 4) {
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
    square = new ArrayList<PVector>();

    // 360 / 4, 60 / 4,  points per side
    
    PVector v = new PVector((size/2) * -1, (size/2) * -1);
    
    //top
    for(int point = 0; point < 45; point++)
    {
      v.x += size/45;
      square.add(new PVector(v.x, v.y));
    }
        
    //right
    for(int point = 0; point < 45; point++)
    {
      v.y += size/45;
      square.add(new PVector(v.x, v.y));
    }
    
    //bottom
    for(int point = 0; point < 45; point++)
    {
      v.x -= size/45;
      square.add(new PVector(v.x, v.y));
    }
    
    //left
    for(int point = 0; point < 45; point++)
    {
      v.y -= size/45;
      square.add(new PVector(v.x, v.y));
    }
  }
  
  void MakeShape()
  {
    MakeCircle();
    MakeSquare();
    MakeAdjustedShape();
  }
  
  void MakeAdjustedShape()
  {
    adjustedShape = new ArrayList<PVector>();
    for(PVector sV : square)
    {
      PVector aV = sV.copy();
      aV.x += Randomness();
      aV.y += Randomness();
      adjustedShape.add(aV);
    }
  }
}
