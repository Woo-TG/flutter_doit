import 'package:flutter/material.dart';

void main() => runApp(const ParentWidget());

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool favorited = false;
  int favoriteCount = 10;
  GlobalKey<_ChildWidgetState> childKey = GlobalKey();
  int childCount = 0;

  void toggleFavorite() {
    setState(() {
      if (favorited) {
        favoriteCount -= 1;
        favorited = false;
      } else {
        favoriteCount += 1;
        favorited = true;
      }
    });
  }

  void getChildData() {
    _ChildWidgetState? childState = childKey.currentState;
    setState(() {
      childCount = childState?.childCount ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('State Test'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('I am Parent, child count : $childCount'),
                ElevatedButton(onPressed: getChildData, child: const Text('get child data'))
              ],
            ),
            ChildWidget(key: childKey),
              IconWidget(),    // const 사용 시 하트 색 안변함
             ContentWidget(),  // cosnst 사용 시 카운트 안변함
          ],
        ),
      ),
    );
  }
}

class ChildWidget extends StatefulWidget {
   const ChildWidget({Key? key}) : super(key: key);

  @override
  State<ChildWidget> createState() => _ChildWidgetState();
}

class _ChildWidgetState extends State<ChildWidget> {
  int childCount = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('I am Child, $childCount'),
        ElevatedButton(
            onPressed: (){
              setState(() {
                childCount ++;
              });
            },
            child: const Text('increment')
        )
      ],
    );
  }
}

class IconWidget extends StatelessWidget {
 const IconWidget({super.key});


  @override
  Widget build(BuildContext context) {
    _ParentWidgetState? state =
        context.findAncestorStateOfType<_ParentWidgetState>();

    return Center(
      child: IconButton(
        icon: ((state?.favorited ?? false)
        ?  const Icon(Icons.favorite) : const Icon(Icons.favorite_border)
        ),
        color: Colors.red,
        iconSize: 200,
        onPressed: state?.toggleFavorite

      ),
    );
  }
}

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});


  @override
  Widget build(BuildContext context) {
    _ParentWidgetState? state =
        context.findAncestorStateOfType<_ParentWidgetState>();
    return Center(
      child: Text(
        'favoriteCount : ${state?.favoriteCount}',
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}





