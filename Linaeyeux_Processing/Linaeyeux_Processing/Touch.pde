class Touch
{
  int id;
  int life = 0;
  
  Touch(int i)
  {
    id = i;
  }
  
  
  void Update()
  {
    life++;
  }
  
  int End()
  {
    return life;
  }
}
