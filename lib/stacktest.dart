import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widgets_semanales/animated_container.dart';
import 'package:widgets_semanales/column.dart';
import 'package:widgets_semanales/expanded.dart';
import 'package:widgets_semanales/wrap.dart';
import 'package:widgets_semanales/safe_area.dart';

class StackTest extends StatelessWidget {
  const StackTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stacktest = Row(
      children: [
        Expanded(
          child: Stack(
            // fit: StackFit.passthrough,
            children: [
              Cuadrado(Color.fromARGB(113, 244, 67, 54), 50.0, 40.0),
              Cuadrado(Color.fromARGB(57, 0, 0, 0), 50.0, 30.0),
            ],
          ),
        )
      ],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('stack'),
        ),
        body: stacktest,
      ),
    );
  }
}

class Cuadrado extends StatelessWidget {
  final Color color;
  final double size;
  final double sizeh;
  Cuadrado(this.color, this.size, this.sizeh);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      width: size,
      height: sizeh,
      decoration: BoxDecoration(color: this.color),
    );
  }
}

class Cuadradol extends StatelessWidget {
  final Color color;
  final double size;
  Cuadradol(this.color, this.size);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
      width: size,
      height: size,
      decoration: BoxDecoration(color: this.color),
    );
  }
}
