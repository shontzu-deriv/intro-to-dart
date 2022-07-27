import 'dart:math';

void main() async {
//async await
//   double price =  await getPrice();
//   showPrices(double.parse(price.toStringAsFixed(2))); // function expects 2 params: price & time

//promise
//   getPrice(randomTime()).then((val) {
//     showPrices(double.parse(val.toStringAsFixed(2)));
//   });

//stream (decides in advance what to do with a future piece of data while dart event loop continues)
  Stream priceStream = getPricesStream();
  priceStream.listen((data) {
    showPrices(double.parse(data.price.toStringAsFixed(2)),data.time, data.dt);
  });
}

class Details {
  int time;
  double price;
  DateTime dt;
  Details(int this.time, double this.price, DateTime this.dt);
}


//stream get a stream of random prices
Stream<Details> getPricesStream() async* {
  final int numberOfResults = 10;
  for (var i = 0; i < numberOfResults; i++) {
    // creates a new object using the constructor
    final time = randomTime();
    final price = await getPrice(time);
    final now = DateTime.now();
    yield Details(time, price, now);
  }
}

int randomTime() {
  int randomTime = Random().nextInt(5) + 1;
  return randomTime;
}

Future<double> getPrice(int randomTime) {
  final randomPrice = Random();
  //int randomTime = Random().nextInt(5) + 1;
  return Future.delayed(
    Duration(seconds: randomTime),
    () => randomPrice.nextDouble() * 1000,
  );
}

void showPrices(double price,int time, DateTime dt) {
  print('price: $price \t time: ${time}s \t timeout: $dt');
}

