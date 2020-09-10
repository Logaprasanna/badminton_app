import 'package:flutter/material.dart';
import 'package:refapp/constants.dart';
import 'package:refapp/fixture_list.dart';
import 'sCardWidget.dart';

class Fixtures extends StatefulWidget {
  Fixtures({this.schedule});
  var schedule = [];

  @override
  _FixturesState createState() => _FixturesState(schedule);
}

class _FixturesState extends State<Fixtures> {
  var schedule = [];
  _FixturesState(this.schedule);

  @override
  Widget build(BuildContext context) {
    print('this one ${this.schedule}');
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            'Fixtures',
            style: TextStyle(
                fontSize: 30.0, fontFamily: 'Montserrat', color: Colors.black),
          ),
          margin: EdgeInsets.only(top: 60.0, right: 250.0),
        ),
        SizedBox(
          height: 20.0,
        ),
        FixtureList(
          schedule: widget.schedule,
        )
      ],
    );
  }
}
