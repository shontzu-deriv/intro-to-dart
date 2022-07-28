class Car{
  void StartEngine() {
    _runEngineMotorStarter();
    doSomethingElse();
    //some other steps
  }

  // methods starting with _ is private, only accessible by this class
  void _runEngineMotorStarter(){
    print("energize selenoid");
    print("pull plunder");
  }

  // method without _ is public
  void doSomethingElse() {
    print("doing something else");
  }
}

void main() {
  Car c1 = Car();
  c1.StartEngine();

  // c1 can access both private and public methods from this class
  c1._runEngineMotorStarter();
  c1.doSomethingElse();

  // c2 (in encapsulation2.dart) cannot access private methods from this class
}