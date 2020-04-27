class Ball
{
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  boolean colourChosen = false;
  color c;
  
  Ball()
  {
    position = new PVector(width/2, height/2);
    velocity = new PVector(0,0);
    acceleration = new PVector(0,0);
  }
  
  void update()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    mouse.sub(position);
    mouse.setMag(0.5);
    
    if(mousePressed)
    {
      acceleration = mouse;
      if(!colourChosen)
      {
        c = color(random(255),random(255),random(255));
        fill(c);
        colourChosen = true;
      }
      else
      {
        fill(c);
      }
    }
    else
    {
      acceleration = PVector.random2D();
      colourChosen = false;
      fill(0);

    }
    
    velocity.add(acceleration);
    velocity.limit(10);
    position.add(velocity);
  }
  
  void edges()
  {
    if(position.x > width) position.x = 0;
    if(position.x < 0) position.x = width;
    if(position.y > height) position.y = 0;
    if(position.y < 0) position.y = height;
  }
  
  void display()
  {
    noStroke();
    ellipse(position.x, position.y, 25, 25);
  }
  
}
