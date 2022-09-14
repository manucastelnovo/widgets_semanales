import 'package:flutter/material.dart';

class RowTest extends StatelessWidget {
  const RowTest({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final rowtest = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      verticalDirection: VerticalDirection.down,
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 40,
            color: const Color.fromARGB(255, 55, 123, 179),
            child: const Text('texto1'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 40,
            color: const Color.fromARGB(255, 55, 123, 179),
            child: const Text('texto2'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 40,
            color: const Color.fromARGB(255, 55, 123, 179),
            child: const Text('texto3'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 40,
            height: 40,
            color: const Color.fromARGB(255, 55, 123, 179),
            child: const Text('texto4'),
          ),
        ),
      ],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('row'),
        ),
        body: rowtest,
      ),
    );
  }
}
