void setup() {
  //size(600,600);
}
 
void draw() {
  PVector mouse = new PVector(mouseX,mouseY); // aqui li diem quines seran les posicions del punter del ratolí
  PVector center = new PVector(width/2,height/2); // aqui li diem quin sera el centre de la pantalla per dibuixar la linea
  
  background(255);

  mouse.sub(center); // d'aquesta manera fem que es pugui moure per tota la pantalla la linea
  
  float m = mouse.mag(); // utilitzem un metode ja propi del processing per accedir a la magnitud i poder calcular la magnitud
  
  fill(0); // li fiquem el color negre al rectangle superior
  rect(0,0,m,10); // aquesta es la linea de magnitud superior utilitzat la m sobre la magnitud al dibuixar la linea amb el mouse
  
 // print("Magnitud: " + mouse.mag()); // mostrem un missatge per consola
  text("Magnitud: " + mouse.mag(),0,80); // d'aquesta manera mostrem per pantalla la magnitud a la posicio escollida
  
  translate(width/2,height/2); // d'aquesta manera fem que la linea surti al centre
  
  line(0,0,mouse.x,mouse.y);
}
