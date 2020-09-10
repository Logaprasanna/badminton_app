import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:refapp/bottom_bar_navigation_pattern_example.dart';
import 'package:refapp/fixture_list.dart';
import 'package:refapp/fixtures.dart';
import 'todo.dart';

class SchedulePage extends StatefulWidget {
  List<String> players = [];
  List<String> tempPlayers = [];
  SchedulePage({this.players, this.tempPlayers});

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  var schedule = [];
  @override
  void initState() {
    super.initState();
    roundRobinLogic(widget.players, widget.tempPlayers);
  }

  void roundRobinLogic(players, tempPlayers) {
    if (players.length % 2 != 0) {
      players.add(null);
      tempPlayers.add(null);
    }
    for (var i = 0; i < players.length - 1; i++) {
      var n = players.length - 1;
      for (var j = 0; j < players.length / 2; j++) {
        var temp = {
          "team1": tempPlayers[(players.length - 1) - n],
          "team2": tempPlayers[n]
        };
        var ifNull = temp.values.toList();
        if (ifNull[0] != null && ifNull[1] != null) {
          schedule.add(temp);
        }
        n--;
      }
      for (var l = 0; l < players.length; l++) players[l] = tempPlayers[l];

      for (int k = 1; k < players.length; k++) {
        tempPlayers[0] = players[0];
        if (k == 1) {
          tempPlayers[k] = players[players.length - 1];
        } else
          tempPlayers[k] = players[k - 1];
      }
    }
    print(schedule);
    Fixtures(
      schedule: schedule,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Color(0XFFEFEFEF),
      bottomNavigationBar: BottomBarNavigationPatternExample(),
    );
  }
}
