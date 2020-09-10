import 'package:flutter/material.dart';
import 'package:umpireapp/constants.dart';
import 'add_button.dart';

class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 10,
            child: Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      MyButton(),
                    ],
                  ),
                ],
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
                boxShadow: kShadowBox,
              ),
              padding: EdgeInsets.fromLTRB(30.0, 30.0, 20.0, 20.0),
              margin: EdgeInsets.fromLTRB(30.0, 50.0, 30.0, 10.0),
            ),
          ),
          Container(
            child: Text(
              'Next',
              style: TextStyle(fontSize: 20.0),
            ),
            padding: EdgeInsets.fromLTRB(80.0, 20.0, 80.0, 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: Color(0xFF10FF63),
              boxShadow: kShadowBox,
            ),
            margin: EdgeInsets.fromLTRB(100.0, 20.0, 100.0, 40.0),
          ),
        ],
      ),
    );
  }
}
