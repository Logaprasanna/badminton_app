import 'package:badminton_app/model/players.dart';
import 'package:badminton_app/model/players_data.dart';
import 'package:badminton_app/widgets/check_cards.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badminton_app/widgets/tile.dart';

class PlayerList extends StatefulWidget {
  @override
  _PlayerListState createState() => _PlayerListState();
}

class _PlayerListState extends State<PlayerList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PlayerData>(builder: (context, data, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final playo = data.playerData[index];
          return Dismissible(
            direction: DismissDirection.endToStart,
            key: UniqueKey(),
            onDismissed: (direction) {
              data.removeString(playo);
              Scaffold.of(context).showSnackBar(SnackBar(
                backgroundColor: Colors.white,
                content: Text(
                  "${playo.name} is removed",
                  style: TextStyle(color: Colors.black),
                ),
              ));
            },
            background: Container(
              margin: EdgeInsets.only(bottom: 22.0, top: 3.0, left: 10.0),
              child: Icon(Icons.delete),
              color: Colors.red,
            ),
            child: CheckCards(
              name: playo.name,
              isSelected: playo.isDone,
              callBack: () {
                data.toggleSelect(playo);
              },
            ),
          );
        },
        itemCount: data.getLength,
      );
    });
  }
}
