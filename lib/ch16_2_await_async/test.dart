import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Future<int> funA() {
    return Future.delayed(const Duration(seconds: 3), () => 10);
  }

  Future<int> funB(int arg) {
    return Future.delayed(const Duration(seconds: 2), () => arg * arg);
  }

  Future<int> calFun() async {
    int aResult = await funA();
    int bResult = await funB(aResult);
    return bResult;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: Center(
          child: FutureBuilder(
            future: calFun(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Center(
                  child: Text(
                    '${snapshot.data}',
                    style: const TextStyle(color: Colors.black, fontSize: 30),
                  ),
                );
              }
              return const Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: CircularProgressIndicator(),
                    ),
                    Text(
                      'waiting...',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
