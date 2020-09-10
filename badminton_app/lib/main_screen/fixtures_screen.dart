import 'package:badminton_app/model/players_data.dart';
import 'package:badminton_app/widgets/fixture_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FixturesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFEFEF),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return FixturesCard(
            player1: Provider.of<PlayerData>(context).scheduleData[index]
                ['team1'],
            player2: Provider.of<PlayerData>(context).scheduleData[index]
                ['team2'],
          );
        },
        itemCount: Provider.of<PlayerData>(context).scheduleData.length,
      ),
    );
  }
}
