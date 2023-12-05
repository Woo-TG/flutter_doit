import 'package:flutter/material.dart';

import 'four_screen.dart';
import 'one_screen.dart';
import 'two_screen.dart';
import 'three_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/one',
      routes: {
        '/one': (context) => const OneScreen(),
        '/two': (context) => const TwoScreen(),
        // '/three': (context) => const ThreeScreen(),
        // '/four': (context) => const FourScreen()
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/three'){
          return MaterialPageRoute(
              builder: (context) => const ThreeScreen(),
              settings: settings
          );
        } else if (settings.name == '/four') {
          return MaterialPageRoute(
              builder: (context) => const FourScreen(),
              settings: settings
          );
        }
      },
    );
  }
}
