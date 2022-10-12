import 'package:flutter/material.dart';

class ThirdCounter extends StatefulWidget {
  const ThirdCounter({Key? key}) : super(key: key);

  @override
  State<ThirdCounter> createState() => _ThirdCounterState();
}

class _ThirdCounterState extends State<ThirdCounter> {
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
              ('Counter 3: $_count'),
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

