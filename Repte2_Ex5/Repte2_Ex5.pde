Character warrior;
Character enemy;

void setup() {
  size(600,600); // mida de la finestra
  
  warrior = new Character((width/2) +60, height/2, 30,3); // les dades que seran unicament les inicials, com la posicio, radi i vides
  enemy = new Character((width/2), height/2, 30,5);
    
}

void draw() {
   background(255); // color de fons
   
  float distancia = dist(enemy.x,enemy.y,warrior.x,warrior.y); // aixi podrem veure quina es la distancia entre el enemic i warrior
           
  if (dist(enemy.x,enemy.y,warrior.x,warrior.y) > 100) { // si la distancia entre els characters es major de 100, li resta vida al enemy i tornen a la posicio inicial
     enemy.vida--; 
     // torna a la posicio inicial amb la vida restada
    warrior = new Character((width/2) +60, height/2, 30,warrior.vida);
    enemy = new Character((width/2), height/2, 30,enemy.vida);
   }
   
  if (enemy.Colisionar(warrior)) { // si l'enemic detecta que colisiona amb el warrior li resta una vida i tornen a la posicio inicial
    warrior.vida--;
     // torna a la posicio inicial amb la vida restada a cada character
    warrior = new Character((width/2) +60, height/2, 30,warrior.vida);
    enemy = new Character((width/2), height/2, 30,enemy.vida);
  }
  
  
  if (enemy.vida == 0 && warrior.vida >= 1) {
    // guanyador warrior
      text(warrior.setWinner(), warrior.x, warrior.y);
      // perdedor enemy
      text(enemy.setLoser(), enemy.x+50, enemy.y+20);     
  }
  else if (warrior.vida == 0 && enemy.vida >= 1) {
    // guanyador enemy
       text(enemy.setWinner(), enemy.x, enemy.y);
       // perdedor warrior
       text(warrior.setLoser(), warrior.x+50, warrior.y+20);  
  } 
     
  line(enemy.x,enemy.y,warrior.x,warrior.y); // dibuixo la linea entre les posicions X i Y de un character a les altres posicions X i Y del altre character
  
  enemy.walk(); // li dic que faci el moviment de walk amb el metode de la classe Walker
  enemy.EnemyDisplay(distancia);  // amb el metode de la classe Character dibuixo la ellipse amb les seves caracteristiques que li pertoquen per mostrar
  
  warrior.walk();
  warrior.WarriorDisplay();
}
