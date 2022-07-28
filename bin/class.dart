// car template (constructor)
class Car {
  //Characteristics of the car (properties)
  String manufacturer;
  String model;
  String color;

  Car(this.manufacturer, this.model, this.color);

  //What can the car do (methods)
  void honk() {
    print("honked");
  }

  void moveForward(int distance) {
    print("moved ${distance}m forward");
  }
}

// create a new car object (instances)
final Car1 = Car("Toyota", "Corolla", "Red");
final Car2 = Car("Tesla", "Model S", "Black");

void main() {
  // printCarDetails();
  Car1.honk();
  Car2.moveForward(10);
}

void printCarDetails() {
  print("MANUFACTURER \t MODEL \t \t COLOR");
  print("-------------------------------------------");
  print("${Car1.manufacturer} \t \t ${Car1.model} \t ${Car1.color}");
  print("${Car2.manufacturer} \t \t ${Car2.model} \t ${Car2.color}");
}
