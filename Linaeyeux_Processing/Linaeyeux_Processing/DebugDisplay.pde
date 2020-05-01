class DebugDisplay
{
  PVector frameRatePos;
  PVector numberOfObjets;
  int borderWidth = 50;
  int UITextSize;
  
  DebugDisplay()
  {
    frameRatePos = new PVector(40, 40);
    numberOfObjets = new PVector(width - 80, 40);
    UITextSize = 30;

  }
  
  void Update()
  { 
    Display();
  }
  
  void Display()
  {
    DrawBorder();
    DrawFrameRate();
    DrawNumberOfObjets();
  }
  
  void DrawBorder()
  {
    fill(255);
    rect(0, 0, width, borderWidth);
    rect(0, 0, borderWidth, height);
    rect(width - borderWidth, 0, width, height); 
    rect(0, height - borderWidth, width, height);
  }
  
  void DrawFrameRate()
  {
    textSize(UITextSize);
    fill(0);
    text(frameRate, frameRatePos.x, frameRatePos.y);
  }
  
  void DrawNumberOfObjets()
  {
    textSize(UITextSize);
    fill(0);
    text(objets.size(), numberOfObjets.x, numberOfObjets.y);
  }
}
