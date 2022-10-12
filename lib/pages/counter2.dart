import 'package:flutter/material.dart';

class SecondCounter extends StatefulWidget {
  const SecondCounter({Key? key}) : super(key: key);

  @override
  State<SecondCounter> createState() => _SecondCounterState();
}

class _SecondCounterState extends State<SecondCounter> {
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
              ('Counter 2: $_count'),
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

