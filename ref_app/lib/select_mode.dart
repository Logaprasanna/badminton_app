import 'package:flutter/material.dart';
import 'package:refapp/card_widget.dart';
import 'package:refapp/schedule_page.dart';

class SelectMode extends StatelessWidget {
  List data1 = [];
  List data2 = [];
  SelectMode({this.data1, this.data2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF289600),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Select Format',
              style: TextStyle(fontSize: 45.0),
            ),
          ),
          Row(
            children: <Widget>[
              CardWidget(
                title: 'Knockout',
                size: 28.0,
              ),
              CardWidget(
                title: 'League',
                size: 28.0,
                onPress: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return SchedulePage(
                      players: data1,
                      tempPlayers: data2,
                    );
                  }));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
