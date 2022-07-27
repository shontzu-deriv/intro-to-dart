import 'dart:math';

void main() async {
//async await
  double price =  await getPrice();
  showPrices(double.parse(price.toStringAsFixed(2)));

//promise
  getPrice().then((val) {
    showPrices(double.parse(val.toStringAsFixed(2)));
  });

//stream
  Stream<double> stream = getPricesStream();
  stream.listen((data) {
    showPrices(double.parse(data.toStringAsFixed(2)));
  });

}



//stream get a stream of random prices
Stream<double> getPricesStream() async* {
  final int numberOfResults = 5;
  for (var i = 0; i < numberOfResults; i++) {
    final price = await getPrice();
    yield price;
  }
}


Future<double> getPrice() {
  final randomPrice = Random();
  //final randomTime = Random().nextInt(5) + 1;
  return Future.delayed(
    Duration(seconds: randomTime()),
    () => randomPrice.nextDouble() * 1000,
  );
}

void showPrices(double price) {
  print(price);
}

int randomTime() {
  return Random().nextInt(5) + 1;
}

