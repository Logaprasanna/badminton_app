import 'package:badminton_app/bottom_navigation_bar/bottom_bar_navigation_pattern_example.dart';
import 'package:badminton_app/model/player_list.dart';
import 'package:badminton_app/model/players_data.dart';
import 'package:badminton_app/screens/add_players_screen.dart';
import 'package:badminton_app/widgets/color_card.dart';
import 'package:flutter/material.dart';
import 'package:badminton_app/model/players.dart';
import 'package:badminton_app/model/new_player_list.dart';
import 'package:badminton_app/model/round_robin_algorithm.dart';
import 'package:provider/provider.dart';

List<Players> playerData = [];

class PlayersScreen extends StatefulWidget {
  @override
  _PlayersScreenState createState() => _PlayersScreenState();
}

class _PlayersScreenState extends State<PlayersScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff004EFF),
        onPressed: () async {
          playerData = await Navigator.push(context,
              MaterialPageRoute(builder: (context) {
            return AddPlayersScreen();
          })) as List<Players>;
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20.0))),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      backgroundColor: Color(0xff07021A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.0,
              ),
              Text(
                'Players',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: 'Montserrat'),
              ),
              SizedBox(
                width: 400.0,
                height: 50.0,
                child: Divider(
                  height: 10.0,
                  color: Color(0xff525274),
                ),
              ),
              Expanded(
                child: NormalCardList(),
              ),
              Center(
                child: FlatButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
                  onPressed: () {
                    var data = Provider.of<PlayerData>(context, listen: false)
                        .scheduleData;
                    print(data);
                    print(data[5]['team2']);
                    print(data.length);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return BottomBarNavigationDataProvider();
                    }));
                  },
                  color: Color(0xff6FFF8B),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Text(
                    'Continue',
                    style: TextStyle(color: Colors.white, fontSize: 15.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// RoundRobin.roundRobinLogic(
// Provider.of<PlayerData>(context, listen: false)
// .playerNamesList,
// Provider.of<PlayerData>(context, listen: false)
// .playerNamesList2);
