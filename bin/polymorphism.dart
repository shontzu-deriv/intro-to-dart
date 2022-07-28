class Animal {
  void makeSound(){
    print("Animal make sound");
  }
}

class Duck extends Animal {
  @override
  void makeSound()=>print("Quack");
}

class Cat extends Animal {
  @override
  void makeSound() => print("Mew");
}

void main() {
  final Animal duck = Duck();
  final Animal cat = Cat();
  final Animal animal = Animal();

  duck.makeSound();
  cat.makeSound();
  animal.makeSound();
}