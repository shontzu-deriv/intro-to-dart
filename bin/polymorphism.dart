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

class Dog extends Animal {
  @override
  void makeSound() => print("Woof");
}

class Cow extends Animal {
  @override
  void makeSound() => print("Moo");
}

void main() {
  final Animal duck = Duck();
  final Animal cat = Cat();
  final Dog dog = Dog();
  final Cow cow = Cow();
  final Animal animal = Animal();

  duck.makeSound();
  cat.makeSound();
  dog.makeSound();
  cow.makeSound();
  animal.makeSound();
}