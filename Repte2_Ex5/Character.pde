class Character extends Walker {
  int posX;
  int posY;
  int diameter;

  int vida;

  String Warrior = "Warrior";
  String Enemy = "Enemy";
  String Loser = "Loser";
  String Winner = "Winner";

// Setters creats per poder controlar i mostrar quan ha guanyat o perdut a la classe del main
  public String setWinner() {
    return Winner;
  }
   public String setLoser() {
    return Loser;
  }

  Character(int x_, int y_, int diametre, int vidaInicial) { // constructor per utilitzar al main
    posX = x_;
    x = posX;
    posY = y_;
    y = posY;
    diameter = diametre;
    vida = vidaInicial;
  }

  void EnemyDisplay(double distancia) {
    if (vida == 0) { // en cas de arribar les vides a 0, ho fem desapareixer tot
      noStroke();
      noFill();
    } else {
      ellipse(x, y, diameter, diameter); // forma del cercle
      text(Enemy, x+24, y); // li dic el nom i la posicio
      text("Vida: " + vida, x+27, y+15); // li indico les vides i la posicio on ha d'anar
      text("Distancia: " + (int)distancia, x+27, y+30); // li indico la distancia entre els characters i la posicio on ha d'anar
      fill(0, 255, 0); // color del cercle
    }
  }

  void WarriorDisplay() {
    if (vida == 0) { 
      noStroke();
      noFill();
    } else {
      ellipse(x, y, diameter, diameter);
      text(Warrior, x+24, y+1);
      text("Vida: " + vida, x+24, y+15);
      fill(255, 0, 0);
    }
  }

  boolean Colisionar(Character other) {
    float sumaRadi = this.diameter/2 + other.diameter/2; // sumem els radis i ho dividim per 2 per aixi sapiguer un punt mes proper al enemic
    float distancia = dist(this.x, this.y, other.x, other.y); // controlem la distancia entre un character i l'altre

    if (distancia > sumaRadi) { // en cas que la distancia sigui mes gran que la suma dels radis, voldra dir que els radis no estan tocant i no han xocat
      return false; // no han xocat
    } else {
      return true; // han xocat
    }
  }
}
