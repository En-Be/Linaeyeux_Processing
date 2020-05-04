

// ---- L I N A E Y E U X ----

// A color organ or light synthesizer 

// (a machine/application for generating and performing lumia, or light music, through a novel interface) 

// with features for graphism (the expression of abstract thought in material symbols).

// *Linae is latin for line, yeux is french for light.*

// Inspired by Thomas Wilfred and his clavilux, and Fry and his holophonor, and Hime and her spaceship.



// ---- GLOBAL VARIABLES ----


// Scales
ObjetPersistence objetPersistence = new ObjetPersistence();
ObjetTarget objetTarget = new ObjetTarget();

// Objets
ArrayList<Objet> objets = new ArrayList<Objet>();
int objetCount = 0;

// UI and Debugging overlay
DebugDisplay debugDisplay;
ToggleGrid toggles;
Sliders sliders;


// ---- MAIN LOOP -----

void setup()
{
  orientation(PORTRAIT);
  fullScreen();
  frameRate(30);
  debugDisplay = new DebugDisplay();
  sliders = new Sliders();
  toggles = new ToggleGrid();
}

void draw()
{ 
  inputUpdate();
  
  for(Objet o : objets)
  {
    o.Update();
  }
  
  debugDisplay.Update();
  toggles.Update();
}
