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
        body: Column(
          children: [
            GestureDetector(
              child: Image.asset('images/icon/user.png'),
              onTap: (){
                debugPrint('image click...');
              },
              onVerticalDragStart: (DragStartDetails tg){
                debugPrint('vertical drag start...global position : '
                    '${tg.globalPosition.dx}, ${tg.globalPosition.dy}');
              },
            ),
            ElevatedButton(
                onPressed: (){
                  debugPrint('ElevatedButton click...');
                },
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
                child: const Text('Click Me'),
            ),
          ],
        ),
      ),
    );
  }
}
