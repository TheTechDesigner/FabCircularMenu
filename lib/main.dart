import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FabCircularMenuState> _key = GlobalKey();
  String title = 'Fab Circular Menu';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(),
      floatingActionButton: FabCircularMenu(
        key: _key,
        fabColor: Color(0xFFC41A3B),
        fabOpenColor: Color(0xFFC41A3B),
        fabCloseColor: Color(0xFF1B1F32),
        fabOpenIcon: Icon(Icons.menu, color: Color(0xFFFBE0E6)),
        fabCloseIcon: Icon(Icons.close, color: Color(0xFFFBE0E6)),
        fabSize: 64.0,
        fabElevation: 16.0,
        fabMargin: EdgeInsets.all(16.0),
        alignment: Alignment.bottomRight,
        ringWidth: 125.0,
        ringDiameter: 425.0,
        ringColor: Color(0xFFFBE0E6),
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(seconds: 1),
        onDisplayChange: (_isOpen) {
          print('Menu is ${_isOpen ? 'Open' : 'Closed'}');
        },
        children: <Widget>[
          RawMaterialButton(
            onPressed: () {
              print('Home');
              _key.currentState.close();
            },
            child: Icon(Icons.home, color: Color(0xFFC41A3B)),
            shape: CircleBorder(),
            padding: EdgeInsets.all(16.0),
          ),
          RawMaterialButton(
            onPressed: () {
              print('category');
              _key.currentState.close();
            },
            child: Icon(Icons.category, color: Color(0xFFC41A3B)),
            shape: CircleBorder(),
            padding: EdgeInsets.all(16.0),
          ),
          RawMaterialButton(
            onPressed: () {
              print('Search');
              _key.currentState.close();
            },
            child: Icon(Icons.search, color: Color(0xFFC41A3B)),
            shape: CircleBorder(),
            padding: EdgeInsets.all(16.0),
          ),
          RawMaterialButton(
            onPressed: () {
              print('Cart');
              _key.currentState.close();
            },
            child: Icon(Icons.shopping_cart, color: Color(0xFFC41A3B)),
            shape: CircleBorder(),
            padding: EdgeInsets.all(16.0),
          ),
          RawMaterialButton(
            onPressed: () {
              print('Profile');
              _key.currentState.close();
            },
            child: Icon(Icons.person, color: Color(0xFFC41A3B)),
            shape: CircleBorder(),
            padding: EdgeInsets.all(16.0),
          ),
        ],
      ),
    );
  }
}
