void draw() {
  background(255);
 
  PVector mouse = new PVector(mouseX,mouseY);
  PVector center = new PVector(width/2,height/2);
  
  mouse.sub(center); // d'aquesta manera fem que es pugui moure per tota la pantalla la linea
  
  mouse.normalize(); // utilitzem una funcio propia del processing que divideix el component per la seva magnitud per normalitzarlo
  
  mouse.mult(60); // d'aquesta manera li diem que sigui on sigui la posicio del mouse, sempre estara multiplicat pel mateix numero (60), el qual sera la seva mida constant
  // i aixi estarà normalitzat
  
  
  // Un vector unitari s'enten com agafar un vector de qualsevol longuitud i apuntar-lo a la mateixa direcció i cambiar la seva longitud a 1. En altres paraules, un vector unitari
  // és aquell que te el seu modul és igual a 1, que es podria entendre com la longitud total d'un vector. En aquest cas ho multipliquem despres per 60 per tenir aquesta allargada 
  
  
  translate(width/2,height/2); // d'aquesta manera fem que la linea surti al centre
  line(0,0,mouse.x,mouse.y);
}
