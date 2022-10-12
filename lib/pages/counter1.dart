import 'package:flutter/material.dart';

class FirstCounter extends StatefulWidget {
  const FirstCounter({Key? key}) : super(key: key);

  @override
  State<FirstCounter> createState() => _FirstCounterState();
}

class _FirstCounterState extends State<FirstCounter> {
  int _count = 0;

  void _increament () {
    setState(() {
      _count++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              ('Counter 1: $_count'),
              style: TextStyle(fontSize: 70),
            ),
            MaterialButton(
              onPressed: _increament,
              child: Text(
                "Increment me",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.deepPurple,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: _increament,
      child: Icon(Icons.add),
      ),
    );
  }
}

