import 'dart:math';

void main() {
  /// use the 'GetPrice' method to get the getPrice method
  /// display the price using 'showPrices' method

  /// bonus: 2dp

  getPrice().then((val) {
//print(val.toStringAsFixed(2));//prints randomized decimal
    showPrices(double.parse(val.toStringAsFixed(2)));
  });

//showPrices(5.5); // prints 5.5
}

Future<double> getPrice() {
  final random = Random();
  return Future.delayed(
    Duration(seconds: 1),
    () => random.nextDouble() * 1000,
  );
}

void showPrices(double price) {
  print(price);
}
