import 'package:flutter/material.dart';

class ColumnTest extends StatelessWidget {
  const ColumnTest({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final columna = Column(
      // crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      textDirection: TextDirection.ltr,
      mainAxisSize: MainAxisSize.min,
      verticalDirection: VerticalDirection.up,
      textBaseline: TextBaseline.ideographic,
      children: [
        Text('hoalalalala'),
        Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 100.0,
              height: 30.0,
              color: const Color.fromARGB(255, 28, 107, 172),
              child: Text('1'),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 30.0,
            height: 30.0,
            color: const Color.fromARGB(255, 28, 107, 172),
            child: Text('2'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 30.0,
            height: 30.0,
            color: const Color.fromARGB(255, 28, 107, 172),
            child: Text('3'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 30.0,
            height: 30.0,
            color: const Color.fromARGB(255, 28, 107, 172),
            child: Text('4'),
          ),
        ),
      ],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('columna'),
        ),
        body: columna,
      ),
    );
  }
}
