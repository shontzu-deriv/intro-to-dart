/// CONCURRENCY IN DART
void main() async {
  await printSomething(2, "after 2 seconds");
// wait for 2 seconds to finish first then only 1 second
// This way, 2 seconds and 1 second displayed chronologically even if 1 second finish first
// used when funct2 depends on funct1 to execute (i.e. dependant data)
// example: without await, funct2 execute before funct1 fetch data, returns error
// await says await for funct1 to GET data first, then only funct2 CRUD with it
// async without await means each task execute without waiting another
  printSomething(1, "after 1 second");

//in above case, 1 second await 2 second eventhough it finish first, so 2 second execute first
// in below case, 3 second finish and execute first (no await 5 seconds)
  printSomething(5, "after 5 seconds");
  printSomething(3, "after 3 seconds");
}

Future<void> printSomething(int seconds, String message) async {
//Dummy async operation
  await Future.delayed(Duration(seconds: seconds), () {
    print(message);
  });
}

/*
FUTURES vs STREAM
futures: one req one res
stream: multiple req multiple res
*/

//TODO: ISOLATES
/*
Instead of threads, all Dart code runs inside of isolates. Each isolate has its own memory heap, ensuring that none of the state in an isolate is accessible from any other isolate. Because there’s no shared memory, you don’t have to worry about mutexes or locks.
*/

//TODO: FUTURES "returns a future instead of waiting until data returns"
/*
Example: The synchronous File method readAsStringSync() reads a file synchronously, blocking until the file is either fully read or an error occurs. The method then either returns a type String or throws an exception. The asynchronous equivalent, readAsString(), immediately returns an object of type Future<String>. At some point in the future, the Future<String> completes with either a string value or an error.
*/

//TODO: STREAM
