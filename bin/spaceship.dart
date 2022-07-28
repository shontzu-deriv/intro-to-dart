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
  int maxArmorPower() => Random().nextInt(100) + 11; //value between 10 to 100

  @override
  hit() {
    var damage = HSSS.firePower-maxArmorPower();
    health = health - damage;
    print("Armored Spaceship got hit \t (damage:$damage) \t (health $health)");
  }

  @override
  destroyed() {
    print("Armored Spaceship destroyed");
    print("Highspeed Spaceship won");
  }

  @override
  int firePower = 100;

  @override
  int health = 2000;

  @override
  String name = "Armored Spaceship";
}

class HighSpeedSpaceShip implements SpaceShip {

  bool dodge=false;

  hit() {
    dodge = Random().nextBool();
    if (dodge == false){
    health = health - ASS.firePower;
    }
    print("Highspeed Spaceship got hit \t (damage:${ASS.firePower}) \t (health $health)");
  }

  @override
  destroyed() {
    print("Highspeed Spaceship destroyed");
    print("Armored Spaceship won");
  }

  @override
  int firePower = 100;

  @override
  int health = 2000;

  @override
  String name = "Highspeed Spaceship";
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
      //todo: if ships[i] = ASS, trigger ASS armor function. Else, trigger HSSS dodge function.
      if (i == 0) {
        //todo: call HSSS dodge function to randomize dodge
        //if dodge = true, damage = 0
        //if dodge = false, damage = ASS.firePower
      } else {
        //todo: call armor function to randomize armor
        //damage = HSSS.firePower - armorStrength
      }

      //call hit function to inflict damage
      hitShip.hit();
      //toggle i between 1 (HSSS) and 0 (ASS)
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
  print("------------------------------------------------------------------");
  print(
      "ASS:\t\t MaxArmorPower ${ASS.maxArmorPower} \t health ${ASS.health} \t firePower ${ASS.firePower}");
  print(
      "HSSS:\t\t Dodge ${HSSS.dodge} \t\t health ${HSSS.health} \t firePower ${HSSS.firePower}");
  print("------------------------------------------------------------------");
}
