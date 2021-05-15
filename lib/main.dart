import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:model_app/Electronics/main.dart';
import 'package:model_app/Engg_Mechanics/e-m.dart';
import 'package:model_app/Machine_Drawing/md.dart';
//import 'package:pdf_flutter/pdf_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Study App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.tealAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Center(
                      child: Container(
                          decoration: (BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(36),
                              ),
                              color: Colors.lightGreen)),
                          height: 200,
                          child: Center(
                            child: Text(
                              'Mechanical Engineering',
                              style: TextStyle(
                                fontSize: 45,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ),
                  // Electronics & Engineering Mechanics
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Electronics
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => El(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('assets/el_repair.jpg'),
                                    fit: BoxFit.fitWidth)),
                            child: Text(
                              'Electronics',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                            ),
                            padding: const EdgeInsets.all(3.0),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                        //Engineering Mechanics
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EmPage(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage('assets/em.jpg'),
                                    fit: BoxFit.cover)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Engineering \nMechanics',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Fluid mechanics & Thermodynamics
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Fluid Mechanics
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _Fm(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage('assets/fm.jpg'),
                                    fit: BoxFit.cover)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Fluid  Mechanics',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                        //Thermodynamics
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _Thermo(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/thermodynamics.jpg'),
                                    fit: BoxFit.cover)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Thermodynamics',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Machine drawing & Material Technology
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Machine Drawing
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MdP(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage('assets/md.jpg'),
                                    fit: BoxFit.cover)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Machine Drawing',
                              style: TextStyle(
                                  color: Colors.blueGrey, fontSize: 28),
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                        //Material Technology
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _English(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/MaterialTech.jpg'),
                                    fit: BoxFit.cover)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Material Technology',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 28),
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // CAD & Maths
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // CAD
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _Cad(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/80382b0442e42088e045d545abd38330.jpg'),
                                    fit: BoxFit.fitWidth)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'CAD',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                        //Maths
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _Maths(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage('assets/maths.jpg'),
                                    fit: BoxFit.cover)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Maths',
                              style: TextStyle(
                                  color: Colors.blueAccent, fontSize: 28),
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Solid Mechanics & Thermal Engineering
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //Solid Mechanics
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _Fm(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage('assets/MoS.jpg'),
                                    fit: BoxFit.cover)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Solid \nMechanics',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 28),
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                        //Thermal Engineering
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _Thermo(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage('assets/thermeng.jpeg'),
                                    fit: BoxFit.cover)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Thermal \nEngineering',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Computer Science & Others
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    height: MediaQuery.of(context).size.height * 0.3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //Computer Science
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MdP(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                color: Colors.white,
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/computer-hardware_80590-1785.jpg'),
                                    fit: BoxFit.cover)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Computer Science',
                              style:
                                  TextStyle(color: Colors.black, fontSize: 24),
                              textAlign: TextAlign.center,
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                        //Others
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => _English(),
                                ));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16),
                                image: DecorationImage(
                                    image: AssetImage('assets/elect.jpg'),
                                    fit: BoxFit.cover)),
                            padding: const EdgeInsets.all(3.0),
                            child: Text(
                              'Others',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                              ),
                            ),
                            alignment: Alignment.bottomCenter,
                            width: MediaQuery.of(context).size.width * 0.45,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class _Maths extends StatefulWidget {
  @override
  __MathsState createState() => __MathsState();
}

class __MathsState extends State<_Maths> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hi , where you will learn Maths',
          style: TextStyle(color: Colors.blue, fontSize: 45),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _Em extends StatefulWidget {
  @override
  __EmState createState() => __EmState();
}

class __EmState extends State<_Em> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Engineering Mechanics'),
      ),
      body: Center(
        child: Text(
          'Hi , where you will learn Maths',
          style: TextStyle(color: Colors.blue, fontSize: 45),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _Fm extends StatefulWidget {
  @override
  __FmState createState() => __FmState();
}

class __FmState extends State<_Fm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fluid Mechaincs'),
      ),
      body: Center(
        child: Text(
          'Hi , where you will learn Fluid Mechanics',
          style: TextStyle(color: Colors.blue, fontSize: 45),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _Thermo extends StatefulWidget {
  @override
  __ThermoState createState() => __ThermoState();
}

class __ThermoState extends State<_Thermo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thermodynamics'),
      ),
      body: Center(
        child: Text(
          'Hi , where you will learn Thermodynamics',
          style: TextStyle(color: Colors.blue, fontSize: 45),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _Cad extends StatefulWidget {
  @override
  __CadState createState() => __CadState();
}

class __CadState extends State<_Cad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CAD'),
      ),
      body: Center(
        child: Text(
          'Hi , where you will learn CAD',
          style: TextStyle(color: Colors.blue, fontSize: 45),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

class _English extends StatefulWidget {
  @override
  __EnglishState createState() => __EnglishState();
}

class __EnglishState extends State<_English> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English'),
      ),
      body: Center(
        child: Text(
          'Hi , where you will learn English',
          style: TextStyle(color: Colors.blue, fontSize: 45),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
