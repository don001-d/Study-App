import 'package:flutter/material.dart';
import 'package:model_app/Engg_Mechanics/em_pdf.dart';

//import 'package:pdf_flutter/pdf_flutter.dart';

class EmPage extends StatefulWidget {
  @override
  EmPageState createState() => EmPageState();
}

class EmPageState extends State<EmPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Engineering Mechanics'),
          backgroundColor: Colors.blue,
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(children: [
            Container(
              child: Image.asset('assets/em.jpg'),
            ),
            Container(
              width: 600,
              padding: EdgeInsets.all(15),
              child: Text(
                'This Subject is used for analysing Strengths and Loads of Buildings etc .',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Container(
              height: 120,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MathsP(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.blue,
                      ),
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'EM \nAssignment-1',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                        textAlign: TextAlign.center,
                      ),
                      alignment: Alignment.center,
                      width: 150.0,
                      height: 100.0,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FusionShort(),
                          ));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.pinkAccent,
                      ),
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        'Fusion 360 \nShortcuts',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      alignment: Alignment.center,
                      width: 150.0,
                      height: 100.0,
                    ),
                  ),
                ],
              ),
            ),
          ]), //PDF.asset('assets/ima/EmLec.pdf'),
        )));
  }
}
