import 'package:flutter/material.dart';

class DI extends StatefulWidget {
  @override
  _DIState createState() => _DIState();
}

class _DIState extends State<DI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(children: [
          Container(
            child: Image.asset('assets/Inkedwhat-is-a-diode_LI.png'),
          ),
          Container(
            width: 600,
            padding: EdgeInsets.all(12),
            child: Text(
              'Diode',
              style: TextStyle(fontSize: 36),
            ),
          ),
          Container(
            padding: EdgeInsets.all(18),
            width: 600,
            child: Text(
              "A diode is a semiconductor device that essentially acts as a one-way switch for current. It allows current to flow easily in one direction, but severely restricts current from flowing in the opposite direction.Diodes are also known as rectifiers because they change alternating current (ac) into pulsating direct current (dc). Diodes are rated according to their type, voltage, and current capacity.Diodes have polarity, determined by an anode (positive lead) and cathode (negative lead). Most diodes allow current to flow only when positive voltage is applied to the anode. \nA diode is defined as a two terminal electronic component that only conducts current in one direction ' so long as it is operated within a specified voltage level'. An ideal diode will have zero resistance in one direction and infinie resistance in reverse direction .\nAlthough real world , diodes can't achieve zero or infinite resistance . Instead , a didode will have negligible resistance in one direction 'to allow current flow ', and a very high resistance in the reverse direction ' to prevent current flow'. A diode is effectively like a value for an electrical circuit .\nA variety of diode configurations are displayed in this graphic:",
              style: TextStyle(fontSize: 22),
            ),
          ),
          Container(
            child: Image.asset('assets/unbiased-diode.png'),
          ),
          Container(
            child: Image.asset('assets/diode.jpg'),
          ),
          Container(
            width: 600,
            padding: EdgeInsets.fromLTRB(12, 12, 12, 30),
            child: Text(
              'When a diode allows current flow, it is forward-biased. When a diode is reverse-biased, it acts as an insulator and does not permit current to flow.',
              style: TextStyle(fontSize: 22),
            ),
          ),
        ]),
      )),
    );
  }
}
