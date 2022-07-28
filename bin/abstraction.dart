abstract class LivingEntity {
  void eat();
}

class Human implements LivingEntity {
  @override
  void eat() {
    print("eating bread");
  }
}

class Sheep implements LivingEntity {
  @override
  void eat() {
    print("eating grass");
  }
}

main() {
  //equivalent of JS array
  List<LivingEntity> LivingEntities = [
    Human(),
    Sheep(),
    Human(),
  ];

  //equivalent of v-for loop to print (v-for item in items)
  for (LivingEntity entity in LivingEntities) {
    entity.eat();
  }

  // equivalent of JS forEach loop (forEach item in items)
  LivingEntities.forEach((entity) => {entity.eat()});

  // manually print hardcoding
  // Sheep s1 = Sheep();
  // s1.eat();
  // Human h1 = Human();
  // h1.eat();
}
