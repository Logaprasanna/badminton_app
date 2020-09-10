import 'package:flutter/material.dart';
import 'sCardWidget.dart';

class FixtureList extends StatelessWidget {
  var schedule;
  FixtureList({this.schedule});

  Widget _buildList(BuildContext context, int index) {
    var Ateam = schedule[index]["team1"];
    var Bteam = schedule[index]["team2"];

    return sCardWidget(
      title: schedule[index]["team1"],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildList,
      itemCount: schedule.length,
    );
  }
}
