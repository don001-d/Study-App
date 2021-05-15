import 'package:flutter/material.dart';

class MicroCon extends StatefulWidget {
  @override
  _MicroConState createState() => _MicroConState();
}

class _MicroConState extends State<MicroCon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            'Hi , \nThis Page is for Microcontrollers',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
