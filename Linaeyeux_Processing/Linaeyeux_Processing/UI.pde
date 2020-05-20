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
    DrawTouches();
    DrawBorder();
    DrawFrameRate();
    DrawNumberOfObjets();
    DrawButtonPositions();
    DrawActiveScale();
  }
  
  void DrawTouches()
  {
    for(int t = 0; t < touches.length; t++)
    {
      noFill();
      strokeWeight(1);
      stroke(0,0,100,100);
      circle(touches[t].x,touches[t].y, 200);
      text("t_id: " + touches[t].id, touches[t].x, touches[t].y - 225);
      if(t < touches.length - 1)
      {
        line(touches[t].x, touches[t].y, touches[t + 1].x, touches[t + 1].y);
      }
      else if(t > 1)
      {
        line(touches[t].x, touches[t].y, touches[0].x, touches[0].y);
      }
    }
  }
  
  void DrawBorder()
  {
    fill(0, 0, 100, 100);
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
    text(scales.ActiveLabel(), activeScalePos.x, activeScalePos.y);
    text(scales.ActiveValue(), activeScalePos.x - 400, activeScalePos.y);
    text(scales.ActiveValueRandomness(), activeScalePos.x + 400, activeScalePos.y);

  }
}
