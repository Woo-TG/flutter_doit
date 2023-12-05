import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _selectedIndex = 0;

  final List<Widget> _widgetOptions = [
    const Text('First Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
    const Text('Second Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    const Text('Third Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
    const Text('Fourth Screen', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          bottom: PreferredSize(preferredSize: const Size.fromHeight(48.0),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      colorScheme: ColorScheme.fromSwatch().copyWith(
                        secondary: Colors.white)
                      ),
                    child: Container(
                      height: 48.0,
                      alignment: Alignment.center,
                      child: const Text('AppBar Bottom Text'),
                    ),
                  ),
          ),
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/big.jpeg'),
                fit: BoxFit.fill
              ) ,
            ),
          ),
          title: const Text('AppBar Title'),
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.add_alert)
            ),
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.phone)
            )
          ],
        ),
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: 'First',
              backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.business),
                label: 'Second',
                backgroundColor: Colors.red
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Third',
                backgroundColor: Colors.purple
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.local_hospital),
                label: 'Fourth',
                backgroundColor: Colors.pinkAccent
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: (){},
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: (){},
              )
            ],
          ),
        ),
      ),
    );
  }
}
