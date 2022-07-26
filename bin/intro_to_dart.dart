/// this class has some biodata
import 'package:intro_to_dart/intro_to_dart.dart' as intro_to_dart;

//declare and initialize biodata
void main(List<String> arguments) {
String name ='yuuchin';
int age = 22;
double height = 153.00;
double weight = 46.5;
bool something = true; 
var color_list = ['red', 'green', 'yellow', 'blue'];

/* 
display biodata 
using print
*/
print(name);
print(age);
print(height);
print(weight);
print(something);
print(color_list);

makeGreeting(name, age); 
makeGreetingArrow(name, age); 
makeGreetingOptional();
makeGreetingNamed();

findVolume(10,20,height:30);//valid & we can see the parameter name is mentioned here.
findVolume(10,20);//also valid

checkAge(age);
}


// NORMAL FUNCTION
makeGreeting(String name, int age){
print('Normal func: $name is $age years old');
}

// ARROW FUNCTION
makeGreetingArrow(String name, int age)=>print('Arrow func: $name is $age years old');

/* 
POSITIONAL PARAMETER ([])
Optional parameters are parameters which don't have to be specified when calling given function. Optional parameters must be declared after required parameters.
? --> null-safe
*/
makeGreetingOptional([String name="default", int age=0]) {
print('Optional funct: $name is $age years old');
}

/* 
NAMED PARAMETERS ({})
have to use parameter name to assign a value which separated with colan :
Order does not matter
these type parameter help us to avoid confusion while passing value for a function which has many parameter.
use named optional parameters to create more readable APIs.
*/
makeGreetingNamed({String name='default', int age=0}){
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
 if (age % 2 == 0 ) {
  print("age is even");
 } else {
 print("age is odd");
}
}
