import 'package:flutter/material.dart';

class SafeAreawidget extends StatelessWidget {
  const SafeAreawidget({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: SafeArea(
          bottom: true,
          top: true,
          child: ListView(
            children: List.generate(100, (i) => Text('$i - companhero n')),
          ),
        ),
      ),
    );
  }
}


// Safe area sirve para asegurar que el contenido se muestre completo y no se obstruya con
