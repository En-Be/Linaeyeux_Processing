

// ---- L I N A E Y E U X ----


// A color organ or light synthesizer 

// (a machine/application for generating and performing lumia, or light music, through a novel interface) 

// with features for graphism (the expression of abstract thought in material symbols).

// *Linae is latin for line, yeux is french for light.*

// Inspired by Thomas Wilfred and his clavilux, and Fry and his holophonor, and Hime and her spaceship.



// ---- GLOBAL VARIABLES ----

//platform
boolean onAndroid = false;

// Scales
DebugDisplay debugDisplay = new DebugDisplay();
Persistence persistence = new Persistence();

// Objets
ArrayList<Objet> objets = new ArrayList<Objet>();
int objetCount = 0;


// ---- MAIN LOOP -----

void setup()
{
  fullScreen();
  frameRate(30);
}

void draw()
{

  inputUpdate();
  
  persistence.Update();
  
  for(Objet o : objets)
  {
    o.Update();
  }
  
  debugDisplay.Update();
}
