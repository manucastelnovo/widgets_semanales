import 'package:flutter/material.dart';

class Wraptest extends StatelessWidget {
  const Wraptest({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expanded',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expanded'),
        ),
        body: Wrap(
          direction: Axis.horizontal,
          spacing: 10.0,
          runSpacing: 40.0,
          children: [
            Cuadrado(Colors.pink),
            Cuadrado(Colors.green),
            Cuadrado(Colors.pink),
            Cuadrado(Colors.green),
            Cuadrado(Colors.pink),
            Cuadrado(Colors.green),
            Cuadrado(Colors.pink),
            Cuadrado(Colors.green),
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
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 3),
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(color: this.color),
    );
  }
}
