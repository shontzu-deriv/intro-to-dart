import "dart:math";

class SpaceShip {
  int health;
  int firePower;
  String name;

  SpaceShip(this.health, this.firePower, this.name);

  //Methods
  hit() {
    print("hit");
  }

  destroyed() {
    print("destroyed");
  }
}

class ArmoredSpaceShip implements SpaceShip {
  @override
  int firePower = 200;

  @override
  int health = 2000;

  @override
  String name = "Armored Spaceship";

  Random random = Random();
  double maxArmorPower() =>
      random.nextDouble(); // randomize armor power in percentage value
  @override
  hit() {
    //use percentage to calculate damage value (damage = 1-armor)
    int damage = ((1 - maxArmorPower()) * HSSS.firePower).toInt();
    health = (health - damage).toInt();
    print("Armored Spaceship got hit \t (damage:$damage) \t (health $health)");
  }

  @override
  destroyed() {
    print("Armored Spaceship destroyed");
    print("Highspeed Spaceship won");
  }
}

class HighSpeedSpaceShip implements SpaceShip {
  @override
  int firePower = 200;

  @override
  int health = 2000;

  @override
  String name = "Highspeed Spaceship";

  bool dodge = false;
  Random random = Random();
  hit() {
    dodge = random.nextBool();
    if (dodge == false) {
      health = health - ASS.firePower;
    }
    print(
        "Highspeed Spaceship got hit \t (damage:${ASS.firePower}) \t (health $health)");
  }

  @override
  destroyed() {
    print("Highspeed Spaceship destroyed");
    print("Armored Spaceship won");
  }
}

// create a new car object (instances)
final ASS = ArmoredSpaceShip();
final HSSS = HighSpeedSpaceShip();

class BattleField {
  void startBattle() {
    var ships = [ASS, HSSS];
    var i = Random().nextInt(ships.length); // randomly pick who starts first
    var hitShip = ships[i];

    // when ASS || HSSS health is not yet 0, continue battle
    do {
      //call hit function to inflict damage
      hitShip.hit();
      //change hitShip by toggling i between 1 and 0
      i = (i + 1) % 2;
      hitShip = ships[i];
    } while (ASS.health > 0 && HSSS.health > 0);

    // check who won, run destroyed function
    ships.forEach((ship) {
      if (ship.health <= 0) {
        ship.destroyed();
      }
    });
  }
}

void main() {
  printShip();
  BattleField().startBattle();
}

printShip() {
  print("--------------------------------------------------------------");
  print(
      "ASS: \t health ${ASS.health} \t firePower ${ASS.firePower}");
  print(
      "HSSS: \t health ${HSSS.health} \t firePower ${HSSS.firePower}");
  print("--------------------------------------------------------------");
}
