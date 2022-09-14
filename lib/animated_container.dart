import 'dart:math';

import 'package:flutter/material.dart';

class Animacionesjeje extends StatelessWidget {
  const Animacionesjeje({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: MiPagina(),
    );
  }
}

class MiPagina extends StatefulWidget {
  const MiPagina({
    Key? key,
  }) : super(key: key);

  @override
  State<MiPagina> createState() => _MiPaginaState();
}

class _MiPaginaState extends State<MiPagina> {
  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    final red = rnd.nextInt(255);
    final green = rnd.nextInt(255);
    final blue = rnd.nextInt(255);
    final width = rnd.nextInt(300) + 50;
    final height = rnd.nextInt(300) + 50;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: const Icon(Icons.accessibility_new),
        onPressed: () {
          setState(() {});
        },
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          curve: Curves.elasticOut,
          width: width.toDouble(),
          height: height.toDouble(),
          decoration: BoxDecoration(
            color: Color.fromRGBO(red, green, blue, 1),
          ),
        ),
      ),
    );
  }
}
