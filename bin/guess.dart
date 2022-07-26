import 'dart:math';
import 'dart:io';

void main(List<String> arguments) {

Random random = new Random();
int randomNumber = random.nextInt(10)+1;
print("Guess the number (1-10)");
int? guessedNumber = null;

do {
int? guessedNumber = int.parse(stdin.readLineSync()!);
//int randomNumber = random.nextInt(10)+1;
//print(randomNumber);

if(guessedNumber > randomNumber){
print("Oops! the number is lower");
} else if (guessedNumber < randomNumber) {
print("Oops! the number is higher");
}else {
print("great! you guessed it right");
break;
}
}

while(randomNumber != guessedNumber);
}
