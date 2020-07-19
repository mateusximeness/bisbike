
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key key}) : super(key: key);

  @override
  _PaginaInicial createState() => _PaginaInicial();
}
class _PaginaInicial extends State<PaginaInicial> {


  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Scaffold(
    ),
    Scaffold(
    ),
    Scaffold(
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text('BottomNavigationBar Sample'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Inicio'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bike),
            title: Text('Rotas'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text('Amigos'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
  _PaginaInicial();
}
