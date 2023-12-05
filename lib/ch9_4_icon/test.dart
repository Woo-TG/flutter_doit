import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  onPressed(){
    debugPrint('icon button click...');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: Column(
          children: [
            const Icon(Icons.alarm, size: 100, color: Colors.red),  // flutter 제공
            const FaIcon(FontAwesomeIcons.bell, size: 100),  // fontawesome
            IconButton(onPressed: onPressed, icon: const Icon(Icons.alarm), iconSize: 100,) // icon button
          ],
        ),
      ),
    );
  }
}
