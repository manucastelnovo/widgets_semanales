import 'dart:math';

import 'package:flutter/material.dart';
import 'package:widgets_semanales/animated_container.dart';
import 'package:widgets_semanales/column.dart';
import 'package:widgets_semanales/expanded.dart';
import 'package:widgets_semanales/wrap.dart';
import 'package:widgets_semanales/safe_area.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listviewtest = ListView(
      scrollDirection: Axis.vertical,
      addAutomaticKeepAlives: false,
      // physics: NeverScrollableScrollPhysics(),
      cacheExtent: 5,
      // reverse: true,
      children: List.generate(
        100,
        (index) => Container(
          margin: const EdgeInsets.symmetric(vertical: 5.0),
          color: Colors.blue,
          width: 30,
          height: 50.0,
          child: Text('$index'),
        ),
      ),
    );

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('hola'),
          ),
          body: listviewtest),
    );
  }
}
