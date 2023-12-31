import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: SingleChildScrollView(     // 스크롤 가능
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 50, height: 100, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 150, color: Colors.blue)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(width: 50, height: 100, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 150, color: Colors.blue)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                height: 200,
                color: Colors.yellow,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(width: 50, height: 100, color: Colors.red),
                    Container(width: 50, height: 50, color: Colors.green),
                    Container(width: 50, height: 150, color: Colors.blue)
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5),
                color: Colors.yellow,
                height: 200,
                child: Stack(
                  children: [
                    Container(color: Colors.red),
                    Container(width: 100, height: 100, color: Colors.green),
                    Container(width: 50, height: 50, color: Colors.yellow),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
