/// this class has some biodata
import 'package:intro_to_dart/intro_to_dart.dart' as intro_to_dart;

/// this is the main class
void main(List<String> arguments) {
  String name = 'yuuchin';
  int age = 22;
  double height = 153.00;
  double weight = 46.5;
  bool something = true;
  var color_list = ['red', 'green', 'yellow', 'blue'];
  int month = 4;

//print(name);
//print(age);
//print(height);
//print(weight);
//print(something);
//print(color_list);

  makeGreeting(name, age);
  makeGreetingArrow(name, age);
  makeGreetingOptional();
  makeGreetingNamed();

  findVolume(10, 20,
      height: 30); //valid & we can see the parameter name is mentioned here.
  findVolume(10, 20); //also valid

  checkAge(age);
  checkMonth(month);
  loopColor();
  whileLoop();
}

// NORMAL FUNCTION
makeGreeting(String name, int age) {
  print('Normal func: $name is $age years old');
}

// ARROW FUNCTION
makeGreetingArrow(String name, int age) =>
    print('Arrow func: $name is $age years old');

/* 
POSITIONAL PARAMETER ([])
Optional parameters are parameters which don't have to be specified when calling given function. Optional parameters must be declared after required parameters.
? --> null-safe
*/
makeGreetingOptional([String name = "default", int age = 0]) {
  print('Optional funct: $name is $age years old');
}

/* 
NAMED PARAMETERS ({})
have to use parameter name to assign a value which separated with colan :
Order does not matter
these type parameter help us to avoid confusion while passing value for a function which has many parameter.
use named optional parameters to create more readable APIs.
*/
makeGreetingNamed({String name = 'default', int age = 0}) {
  print('Named func: $name is $age years old');
}

findVolume(int length, int breath, {int? height}) {
  print('length = $length, breath = $breath, height = $height');
}

/*
COMPLEX DATA TYPES
List<String> names;
List<int> ages;
Map(String, int) people;
*/

// IF-ELSE
checkAge(age) {
  if (age % 2 == 0) {
    print("age is even");
  } else {
    print("age is odd");
  }
}

// SWITCH CASE
checkMonth(month) {
  switch (month) {
    case 1:
      print('january');
      break;
    case 2:
      print('february');
      break;
    case 3:
      print('march');
      break;
    case 4:
      print('april');
      break;
    default:
      print('may');
  }
}

// FOR LOOP
loopColor() {
  for (int i = 0; i < 10; i++) {
    print(i);
  }
}
// FOR-EACH LOOP

// WHILE LOOP
whileLoop() {
  int i = 0;
  while (i < 5) {
    print(i);
    i++;
  }
}

// DO-WHILE LOOP
