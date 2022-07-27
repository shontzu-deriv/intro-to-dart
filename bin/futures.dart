import 'dart:math';

void main() async {
//async await
//   double price =  await getPrice();
//   showPrices(double.parse(price.toStringAsFixed(2)));

//promise
//   getPrice(randomTime()).then((val) {
//     showPrices(double.parse(val.toStringAsFixed(2)));
//   });

//stream (decides in advance what to do with a future piece of data while dart event loop continues)
  Stream<Details> stream = getPricesStream();
  stream.listen((data) {
    showPrices(double.parse(data.price.toStringAsFixed(2)),data.time);
  });
}

class Details {
  int time;
  double price;
  Details(int this.time, double this.price);
}


//stream get a stream of random prices
Stream<Details> getPricesStream() async* {
  final int numberOfResults = 5;
  for (var i = 0; i < numberOfResults; i++) {
    final time = randomTime();
    final price = await getPrice(time);
    yield Details(time, price);
  }
}

Future<double> getPrice(int time) {
  final randomPrice = Random();
  //final randomTime = Random().nextInt(5) + 1;
  return Future.delayed(
    Duration(seconds: time),
    () => randomPrice.nextDouble() * 1000,
  );
}

void showPrices(double price,int time) {
  print('price: $price     time:$time');
}

int randomTime() {
  int time = Random().nextInt(5) + 1;
  return time;
}

