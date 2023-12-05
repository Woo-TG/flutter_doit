import 'package:flutter/material.dart';

void main() => runApp(const Wtg());

class Wtg extends StatelessWidget {
  const Wtg({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WtgListState(),
    );
  }
}


class WtgListState extends StatefulWidget {
  const WtgListState({super.key});

  @override
  State<WtgListState> createState() => _WtgListStateState();
}

class _WtgListStateState extends State<WtgListState> {
  List<Widget> widgetList = [
    WtgItemWidget(Colors.red, key: UniqueKey(),),
    WtgItemWidget(Colors.blue, key: UniqueKey(),),
  ];
  onChange() {
    debugPrint('widgetList.elementAt(0).key');
    setState(() {
      widgetList.insert(1, widgetList.removeAt(0));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Key Test'),),
      body: Column(
          children: [
            Row(children: widgetList),
            ElevatedButton(onPressed: onChange, child: const Text('toggle'))
        ],
      ),
    );
  }
}


class WtgItemWidget extends StatefulWidget {
  Color color;
  WtgItemWidget(this.color, {Key? key}): super(key: key);

  @override
  State<WtgItemWidget> createState() {
    return _WtgItemWidgetState(color);
  }
}

class _WtgItemWidgetState extends State<WtgItemWidget> {
  Color color;
  _WtgItemWidgetState(this.color);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
          color: color,
          width: 150,
          height: 150,
        )
    );
  }
}
