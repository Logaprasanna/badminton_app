import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:badminton_app/model/players.dart';

class PlayerData extends ChangeNotifier {
  List<Players> _playerData = [];
  List<String> playerNames = [];
  List<String> playerNames2 = [];
  List<dynamic> schedule = [];

  UnmodifiableListView<Players> get playerData {
    return UnmodifiableListView(_playerData);
  }

  toggleSelect(Players players) {
    players.toggle();
    notifyListeners();
  }

  List<String> get playerNamesList {
    for (int i = 0; i < playerData.length; i++) {
      playerNames.add(_playerData[i].name);
    }
    return playerNames;
  }

  List<String> get playerNamesList2 {
    for (int i = 0; i < playerData.length; i++) {
      playerNames2.add(_playerData[i].name);
    }
    return playerNames2;
  }

  int get getLength {
    return _playerData.length;
  }

  changeString(newString) {
    _playerData.add(Players(name: newString));
    notifyListeners();
  }

  dataDie() {
    _playerData.clear();
    notifyListeners();
  }

  removeString(Players player) {
    _playerData.remove(player);
    notifyListeners();
  }

  List<dynamic> get scheduleData {
    schedule = roundRobinLogic(playerNamesList, playerNamesList2);
    return schedule;
  }

  roundRobinLogic(players, tempPlayers) {
    var schedule = [];
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
    return schedule;
  }
}
