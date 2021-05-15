import 'package:flutter/material.dart';

class TransForm extends StatefulWidget {
  @override
  _TransFormState createState() => _TransFormState();
}

class _TransFormState extends State<TransForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Text(
          'Hi , \nThis is for Transformers',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
