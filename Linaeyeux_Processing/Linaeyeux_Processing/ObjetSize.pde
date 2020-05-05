class ObjetSize
{
  int size;
  int min = 20;
  int max = 1000;
  
  ObjetSize()
  {
    size = 480;
  }
  
  void Update()
  {
    size = constrain(size, min, max);

    for(Objet o : objets)
    {
      o.size = size;
    }
  }
  
  
  // ----
  
  
  void Up()
  {
    print("size up");
    size += 10;
  }
  
  void Down()
  {
    print("size down");
    size -= 10;
  }
  
}
