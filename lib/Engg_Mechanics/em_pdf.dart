import 'package:flutter/material.dart';
import 'package:native_pdf_view/native_pdf_view.dart';
import 'package:native_pdf_renderer/native_pdf_renderer.dart';

class MathsP extends StatefulWidget {
  @override
  _MathsPState createState() => _MathsPState();
}

class _MathsPState extends State<MathsP> {
  @override
  final pdfController = PdfController(
    document: PdfDocument.openAsset('assets/EmLec.pdf'),
  );
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'EM Assisgnment -1',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: PdfView(
            controller: pdfController,
            scrollDirection: Axis.vertical,
            pageSnapping: false,
            renderer: (PdfPage page) => page.render(
              width: page.width * 2,
              height: page.height * 2,
              format: PdfPageFormat.WEBP,
            ),
          ),
        ));
  }
}

class FusionShort extends StatefulWidget {
  @override
  _FusionShortState createState() => _FusionShortState();
}

class _FusionShortState extends State<FusionShort> {
  @override
  final fusShort = PdfController(
    document: PdfDocument.openAsset('assets/Shortcuts-fusion-360.pdf'),
  );
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Fusion 360 Shortcuts',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Center(
          child: PdfView(
            controller: fusShort,
            scrollDirection: Axis.vertical,
            renderer: (PdfPage page) => page.render(
              width: 300,
              height: 450,
              format: PdfPageFormat.PNG,
              backgroundColor: '#f7f7e8',
            ),
          ),
        ));
  }
}
