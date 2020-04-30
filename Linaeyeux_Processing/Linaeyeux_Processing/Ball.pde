class Ball
{
  PVector position;
  PVector velocity;
  PVector acceleration;
  
  boolean colourChosen = false;
  color c;
  int ballSize = 5;
  
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
      if(ballSize <= 1000)
      {
        ballSize += 1;
      }
    }
    else
    {
      acceleration = PVector.random2D();
      colourChosen = false;
      fill(0);
      if(ballSize >= 5)
      {
        ballSize -= 10;
      }

    }
    
    velocity.add(acceleration);
    velocity.limit(10);
    position.add(velocity);
    
    constrain(ballSize, 5, 1000);

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
    print(ballSize);
    ellipse(position.x, position.y, ballSize, ballSize);
  }
  
}
