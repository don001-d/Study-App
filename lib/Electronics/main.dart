import 'package:flutter/material.dart';
import 'package:model_app/Electronics/diode.dart';
import 'package:model_app/Electronics/microcontroller.dart';
import 'package:model_app/Electronics/transform.dart';
import 'package:model_app/Electronics/transister.dart';

class El extends StatefulWidget {
  @override
  ElState createState() => ElState();
}

class ElState extends State<El> {
  // ignore: unused_field

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.amberAccent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Diode
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DI(),
                          ));
                    },
                    child: Container(
                      height: 200,
                      margin: EdgeInsets.fromLTRB(16, 32, 16, 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/Inkedwhat-is-a-diode_LI.png'),
                              fit: BoxFit.fitWidth)),
                      child: Text(
                        'Diode',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      padding: const EdgeInsets.all(3.0),
                      alignment: Alignment.bottomCenter,
                    )),
                //Transistor
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Tran(),
                          ));
                    },
                    child: Container(
                      height: 200,
                      margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: AssetImage(
                                  'assets/Electronics/IC-Package.jpg'),
                              fit: BoxFit.fitWidth)),
                      child: Text(
                        'Transistor',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      padding: const EdgeInsets.all(3.0),
                      alignment: Alignment.bottomCenter,
                    )),
                //Transformer
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TransForm(),
                          ));
                    },
                    child: Container(
                      height: 200,
                      margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        'Transformer',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      padding: const EdgeInsets.all(3.0),
                      alignment: Alignment.bottomCenter,
                    )),
                //Microcontrollers
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MicroCon(),
                          ));
                    },
                    child: Container(
                      height: 200,
                      margin: EdgeInsets.fromLTRB(16, 16, 16, 16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Text(
                        'MicroControllers',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 32,
                            fontWeight: FontWeight.bold),
                      ),
                      padding: const EdgeInsets.all(3.0),
                      alignment: Alignment.bottomCenter,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
