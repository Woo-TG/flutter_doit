import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   MyApp({super.key});
  List<String> city = ['서울시', '인천시', '부산시', '대구시', '대전시',
    '광주시', '울산시', '세종시'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: GridView.builder(
            scrollDirection: Axis.horizontal,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: city.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [Text(city[index]), Image.asset('images/big.jpeg')],
                ),
              );
            }
        ),
      ),
    );
  }
}
