import 'package:flutter/material.dart';

class Expandedwidget extends StatelessWidget {
  const Expandedwidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expanded'),
        ),
        body: Row(
          children: [
            Cuadrado(Colors.pink),
            Expanded(
              child: Cuadrado(Colors.green),
            ),
            Cuadrado(Colors.pink),
            Expanded(
              flex: 2,
              child: Cuadrado(Colors.green),
            ),
          ],
        ),
      ),
    );
  }
}

class Cuadrado extends StatelessWidget {
  final Color color;

  Cuadrado(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(color: this.color),
    );
  }
}
