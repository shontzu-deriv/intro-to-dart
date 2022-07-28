// Parent class (constructor for Human)
class Human{
  void walk(){
    print("humans walk");
  }
}

//Child (constructor for Person) inheriting the parent class (Human)
class Person extends Human {
  void speak() {
    print("that person can speak");
  }
}

void main() {
  Human h1 = Human();
  h1.walk();
  //h1.speak(); //will have error bc speak is Person's method, extending from Human

  Person p1 = Person();
  p1.speak();
  p1.walk();
}