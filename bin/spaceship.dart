import "dart:math";

class SpaceShip {
  int health;
  int firePower;
  String name;

  SpaceShip(this.health, this.firePower, this.name);

  //Methods
  void hit() {
    print("hit");
  }

  void destroyed() {
    print("destroyed");
  }
}

class ArmoredSpaceShip implements SpaceShip {
  int maxArmorPower = 100;

  @override
  void hit() {
    print("ArmoredSpaceShip got hit");
    print("Armored Spaceship won");
  }

  @override
  void destroyed() {
    print("ArmoredSpaceShip destroyed");
    print("High Speed Spaceship won");
  }

  @override
  int firePower = 100;

  @override
  int health = 2000;

  @override
  String name = "Armored Ship";
}

class HighSpeedSpaceShip implements SpaceShip {
  bool dodge = true;

  @override
  void hit() {
    print("HighSpeedSpaceShip got hit");
  }

  @override
  void destroyed() {
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
      //call function to randomize dodge
      // call function to deduct health
      //deduct the health of the ship that is selected
      hitShip.health = hitShip.health -
          hitShip.firePower; //todo: should be called from function
      print(
          "${hitShip.name} got hit\t(health:${hitShip.health})"); //todo: should be called from function
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
  print("ASS:\t\t MaxArmorPower ${ASS.maxArmorPower} \t health ${ASS.health} \t firePower ${ASS.firePower}");
  print("HSSS:\t\t Dodge ${HSSS.dodge} \t\t health ${HSSS.health} \t firePower ${HSSS.firePower}");
}
