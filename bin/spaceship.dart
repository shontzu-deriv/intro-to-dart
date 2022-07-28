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
  int maxArmorPower = 100;

  @override
  hit() {
    health = HSSS.firePower;
    print("ArmoredSpaceShip got hit \t (damage:${HSSS.firePower}) \t (health $health)");
  }

  @override
  destroyed() {
    print("ArmoredSpaceShip destroyed");
    print("High Speed Spaceship won");
  }

  @override
  int firePower = 100;

  @override
  // int health = 2000;

  @override
  String name = "Armored Ship";
}

class HighSpeedSpaceShip implements SpaceShip {
  bool dodge = true;

  @override
  hit() {
    health = health - ASS.firePower;
    print("HighSpeedSpaceShip got hit \t (damage:${ASS.firePower}) \t (health $health)");
  }

  @override
  destroyed() {
    print("HighSpeedSpaceShip destroyed");
    print("Armored Spaceship won");
  }

  @override
  int firePower = 100;

  @override
  int health = 2000;

  @override
  String name = "Highspeed Ship";
}

// create a new car object (instances)
final ASS = ArmoredSpaceShip();
final HSSS = HighSpeedSpaceShip();

class BattleField {
  void startBattle() {
    // take turn one of the ASS or HSSS to get hit
    var ships = [ASS, HSSS];
    var i = Random().nextInt(ships.length); // initialize i as 1 (HSSS)
    var hitShip = ships[i];

    // when ASS || HSSS health is not yet 0, continue battle
    do {
      //todo: call dodge function to randomize dodge
      //todo: call armor function to randomize armor

      //call hit function to inflict damage
      hitShip.hit();
      //toggle the i between 1 (HSSS) and 0 (ASS)
      i = (i + 1) % 2;
      hitShip = ships[i];
    } while (ASS.health != 0 && HSSS.health != 0);

    // check who won, run destroyed function
    if (ASS.health == 0) {
      ASS.destroyed();
    } else {
      HSSS.destroyed();
    }
  }
}

void main() {
  printShip();
  BattleField().startBattle();
}

printShip() {
  print(
      "ASS:\t\t MaxArmorPower ${ASS.maxArmorPower} \t health ${ASS.health} \t firePower ${ASS.firePower}");
  print(
      "HSSS:\t\t Dodge ${HSSS.dodge} \t\t health ${HSSS.health} \t firePower ${HSSS.firePower}");
}
