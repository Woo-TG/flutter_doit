import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  Future<String> tgRootBundle() async {
    return await rootBundle.loadString('assets/text/my_text.txt');
  }
  
  Future<String> tgDefaultAssetBundle(BuildContext context) async {
    return await DefaultAssetBundle.of(context).loadString('assets/text/my_text.txt');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Image.asset('images/icon.jpg'),
            Image.asset('images/icon/user.png'),
            FutureBuilder(
                future: tgRootBundle(),
                builder: (context, snapshot) {
                  return Text('rootBundle : ${snapshot.data}');
                },
            ),
            FutureBuilder(
              future: tgDefaultAssetBundle(context),
              builder: (context, snapshot) {
                return Text('DefaultAssetBundle : ${snapshot.data}');
              },
            )
          ],
        ),
      ),
    );
  }
}
