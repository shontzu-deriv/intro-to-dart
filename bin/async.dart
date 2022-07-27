void main() {

printSomething(2, "after 2 seconds");
printSomething(1, "after 1 second");

}

void printSomething(int seconds, String message) {
//Dummy async operation
Future.delayed(Duration(seconds:seconds), (){
print(message);
});
}
