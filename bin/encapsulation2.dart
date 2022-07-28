//imports all the classes and methods
import 'encapsulation.dart';

void main() {
    Car c2 = Car();
    //has access to doSomethingElse bc it is a public method
    c2.doSomethingElse();

    // code below throws error because _runEngineMotorStarter is private method
    // c2._runEngineMotorStarter();
  }
