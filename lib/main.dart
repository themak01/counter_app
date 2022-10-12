import 'package:counter_app/pages/counter1.dart';
import 'package:counter_app/pages/counter2.dart';
import 'package:counter_app/pages/counter3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  void _navigateBottomBar (int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget>_pages = [
    FirstCounter(),
    SecondCounter(),
    ThirdCounter(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _navigateBottomBar,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Counter 1"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Counter 2"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "Counter 3"),
        ],
      ),
    );
  }
}
