class UI
{
  
  ToggleGrid toggles;
  Sliders sliders;

  PVector frameRatePos;
  PVector numberOfObjetsPos;
  PVector activeScalePos;
  
  int borderWidth = 50;
  int iconSize;
  int UITextSize;
  
  UI()
  {
    sliders = new Sliders();
    toggles = new ToggleGrid();
  
    frameRatePos = new PVector(40, 40);
    numberOfObjetsPos = new PVector(width - 50, 40);
    activeScalePos = new PVector(width/2, height - 20);
    UITextSize = 30;
    iconSize = 25;
  }
  
  void Update()
  { 
    sliders.Update();
    toggles.Update();
    
    Display();
  }
  
  void Display()
  {
    DrawBorder();
    DrawFrameRate();
    DrawNumberOfObjets();
    DrawButtonPositions();
    DrawActiveScale();
  }
  
  void DrawBorder()
  {
    fill(255);
    rect(0, 0, width, borderWidth);
    rect(0, 0, borderWidth, height);
    rect(width - borderWidth, 0, width, height); 
    rect(0, height - borderWidth, width, height);
  }
  
  void DrawButtonPositions()
  {
    fill(0);
    noStroke();
    circle(borderWidth/2, sliders.buttonLeft.position.y, iconSize);
    circle(width - borderWidth/2, sliders.buttonLeft.position.y, iconSize);
    
    noFill();
    stroke(0);
    strokeWeight(5);
    circle(borderWidth/2, sliders.buttonRight.position.y, iconSize);
    circle(width - borderWidth/2, sliders.buttonRight.position.y, iconSize);
  }
  
  void DrawFrameRate()
  {
    textSize(UITextSize);
    textAlign(LEFT);
    fill(0);
    text(frameRate, frameRatePos.x, frameRatePos.y);
  }
  
  void DrawNumberOfObjets()
  {
    textSize(UITextSize);
    textAlign(RIGHT);
    fill(0);
    text(objets.size(), numberOfObjetsPos.x, numberOfObjetsPos.y);
  }
  
  void DrawActiveScale()
  {
    textSize(UITextSize);
    textAlign(CENTER);
    fill(0);
    text(scales.Active(), activeScalePos.x, activeScalePos.y);
    text(scales.ActiveValue(), activeScalePos.x - 400, activeScalePos.y);
    text(scales.ActiveValueRandomness(), activeScalePos.x + 400, activeScalePos.y);

  }
}
