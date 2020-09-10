import 'package:badminton_app/widgets/color_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badminton_app/model/players_data.dart';

class NormalCardList extends StatefulWidget {
  @override
  _NormalCardListState createState() => _NormalCardListState();
}

class _NormalCardListState extends State<NormalCardList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<PlayerData>(builder: (context, data, child) {
      return ListView.builder(
        itemBuilder: (context, index) {
          final playo = data.playerData[index];
          return ColorCard(
            name: playo.name,
          );
        },
        itemCount: data.getLength,
      );
    });
  }
}
