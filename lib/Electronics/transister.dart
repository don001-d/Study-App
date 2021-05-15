import 'package:flutter/material.dart';

class Tran extends StatefulWidget {
  @override
  TranState createState() => TranState();
}

class TranState extends State<Tran> {
  // ignore: unused_field

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
              'Transistor',
              style: TextStyle(fontSize: 36),
            ),
          ),
          Container(
            padding: EdgeInsets.all(18),
            width: 600,
            child: Text(
              "The humble transistor is a device that can control the flow of electricity automatically – it’s triggered by the electrical current itself, like a switch. \nTransistors can be used to create more sophisticated circuits, amplify an electrical signal and even serve as the fundamental building block of a modern computer. The transistor is arguably one of the most important inventions of the 21st century.\nA Transistor is a semiconductor device that essentially acts as a one-way switch for current. It allows current to flow easily in one direction, but severely restricts current from flowing in the opposite direction.Diodes are also known as rectifiers because they change alternating current (ac) into pulsating direct current (dc). Diodes are rated according to their type, voltage, and current capacity.Diodes have polarity, determined by an anode (positive lead) and cathode (negative lead). Most diodes allow current to flow only when positive voltage is applied to the anode. \nA diode is defined as a two terminal electronic component that only conducts current in one direction ' so long as it is operated within a specified voltage level'. An ideal diode will have zero resistance in one direction and infinie resistance in reverse direction .\nAlthough real world , diodes can't achieve zero or infinite resistance . Instead , a didode will have negligible resistance in one direction 'to allow current flow ', and a very high resistance in the reverse direction ' to prevent current flow'. A diode is effectively like a value for an electrical circuit .\nA variety of diode configurations are displayed in this graphic:",
              style: TextStyle(fontSize: 22),
            ),
          ),
          // NPN transister
          Container(
            width: 600,
            padding: EdgeInsets.all(12),
            child: Text(
              'NPN transister',
              style: TextStyle(fontSize: 36),
            ),
          ),
          Container(
            child: Image.asset('assets/Electronics/npn_Trans.jpg'),
          ),
          Container(
            width: 600,
            padding: EdgeInsets.all(12),
            child: Text(
              'PNP transister',
              style: TextStyle(fontSize: 36),
            ),
          ),
          Container(
            child: Image.asset('assets/Electronics/pnp_Trans.png'),
          ),
          Container(
            width: 600,
            padding: EdgeInsets.fromLTRB(12, 12, 12, 30),
            child: Center(
              child: Text(
                'Transistor',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
