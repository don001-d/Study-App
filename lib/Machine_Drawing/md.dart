import 'package:flutter/material.dart';

class MdP extends StatefulWidget {
  @override
  _MdPState createState() => _MdPState();
}

class _MdPState extends State<MdP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Machine Drawing'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                'Hi , \nHere you will learn \nMachine drawing',
                style: TextStyle(fontSize: 40),
                textAlign: TextAlign.center,
              ),
              width: 250,
              height: 300,
            ),
            Container(
              child: Image.asset('assets/ima/md.jpg'),
            ),
          ]),
    );
  }
}
