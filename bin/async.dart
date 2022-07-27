void main() async {

await printSomething(2, "after 2 seconds");
await printSomething(1, "after 1 second");

}

Future<void> printSomething(int seconds, String message) async {
//Dummy async operation
await Future.delayed(Duration(seconds:seconds), (){
print(message);
});
}
