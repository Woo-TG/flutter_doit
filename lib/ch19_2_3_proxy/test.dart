import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class Sum {
  int _sum = 0;
  int get sum => _sum;

  void set sum(value) {
    _sum = 0;
    for (int i = 1; i <= value; i++) {
      _sum += i;
    }
  }
  Sum(Counter counter) {
    sum = counter.count;
  }
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ProxyProvider Test'),
        ),
        body: MultiProvider(
          providers: [
            ChangeNotifierProvider<Counter>.value(value: Counter()),
            ProxyProvider<Counter, Sum>(
                update: (context, model, sum) {
                  if (sum != null) {
                    sum.sum = model.count;
                    return sum;
                  } else {
                    return Sum(model);
                  }
                }
            ),
            ProxyProvider2<Counter, Sum, String>(
                update: (context, model1, model2, data) {
                  return 'count : ${model1.count}, sum : ${model2.sum}';
                },
            ),
          ],
          child: SumWidget(),
        ),
      ),
    );
  }
}

class SumWidget extends StatelessWidget {
  const SumWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var counter = Provider.of<Counter>(context);
    var sum = Provider.of<Sum>(context);
    var string_data = Provider.of<String>(context);
    return Container(
      color: Colors.cyan,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'count : ${counter.count}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'sum : ${sum.sum}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'string : ${string_data}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            ElevatedButton(
                onPressed: (){
                  counter.increment();
                },
                child: const Text('increment')
            ),
          ],
        ),
      ),
    );
  }
}
