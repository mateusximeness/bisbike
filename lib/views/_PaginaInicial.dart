
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key key}) : super(key: key);

  @override
  _PaginaInicial createState() => _PaginaInicial();
}
class _PaginaInicial extends State<PaginaInicial> {

  final tabs = [
    Center(child: Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: (){
          print('Card taped');
        },
        child: const SizedBox(width: 300,
          height: 100,
          child: Text('A card that can be tapped'),),
      ),
    )),
    Center(child: Text('Rotas')),
    Center(child: Text('Amigos')),];
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple
      ),
      body: Center(
        child: tabs[_selectedIndex],
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
