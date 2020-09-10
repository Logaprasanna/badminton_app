import 'package:flutter/material.dart';

class Sample extends StatefulWidget {
  @override
  _SampleState createState() => _SampleState();
}

class _SampleState extends State<Sample> {
  List<String> items = ["Item 1", "Item 2", "Item 3"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('To-Do App'),
          backgroundColor: Colors.cyan,
        ),
        body: ReorderableListView(
          children: <Widget>[
            for (final value in items)
              Text(
                value,
                style: TextStyle(
                  fontSize: 40.0,
                ),
                key: Key(value),
              )
          ],
          onReorder: (OldIndex, NewIndex) {
            setState(() {
              if (OldIndex < NewIndex) {
                NewIndex -= 1;
              }
              var removedWidget = items.removeAt(OldIndex);
              items.insert(NewIndex, removedWidget);
            });
          },
        ),
      ),
    );
  }
}
