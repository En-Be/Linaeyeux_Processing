

// ---- L I N A E Y E U X ----

// A color organ or light synthesizer 

// (a machine/application for generating and performing lumia, or light music, through a novel interface) 

// with features for graphism (the expression of abstract thought in material symbols).

// *Linae is latin for line, yeux is french for light.*

// Inspired by Thomas Wilfred and his clavilux, and Fry and his holophonor, and Hime and her spaceship.



// ---- GLOBAL VARIABLES ----

Input input = new Input();

// Scales
Scales scales = new Scales();

// Objets
ArrayList<Objet> objets = new ArrayList<Objet>();
int objetCount = 0;

// UI and Debugging overlay
UI ui;



// ---- MAIN LOOP -----

void setup()
{
  orientation(PORTRAIT);
  fullScreen();
  frameRate(30);
  colorMode(HSB, 100);
  ui = new UI();

}

void draw()
{ 
  input.Update();
  
  scales.Update();
  
  for(Objet o : objets)
  {
    o.Update();
  }
  
  ui.Update();
}
