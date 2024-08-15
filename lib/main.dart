import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  int _counter = 0;

  void _incremnetCounter(){
    setState(() {
      _counter++;
    });
  }
  void _decremnetCounter(){
    setState(() {
      _counter--;
    });
  }



  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  List<String> screens = [
    'Home Screen',
    'Settings Screen',
    'Tiktok Screen',
    'Profile Screen',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            screens[_selectedIndex],
            style: TextStyle(fontSize: 50),
          )),
          Text(_counter.toString(), style: TextStyle(fontSize: 50),),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _incremnetCounter,
            child: Icon(Icons.add),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            onPressed: _decremnetCounter,
            child: Icon(Icons.remove),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Home',
          ),BottomNavigationBarItem(
              icon: Icon(Icons.settings),
            label: 'Settings',
          ),BottomNavigationBarItem(
              icon: Icon(Icons.tiktok),
            label: 'Tiktok',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(title: Text('Item 1'),),
            ListTile(title: Text('Item 2'),),
            ListTile(title: Text('Item 3'),),
            ListTile(title: Text('Item 4'),),
          ],
        ),
      ),
    );
  }
}
