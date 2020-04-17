PVector location; // indiquem les variables PVector per la velocitat i localització
PVector velocity;
 
void setup() {
  size(640,360);
  location = new PVector(100,100);
  velocity = new PVector(2.5,5);
}
 
void draw() {
  background(255); // li diem el color de fons
 
  location.add(velocity); // li afegim la velocitat indicada anteriorment

  if ((location.x > width) || (location.x < 0)) { // d'aquesta manera detectem si el cercle a arribat a la vorera de la finestra
  // llavors fa una direccio contraria
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
 
  stroke(0);
  fill(175);
  ellipse(location.x,location.y,16,16);
}
