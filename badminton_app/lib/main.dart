import 'package:badminton_app/main_screen/fixtures_screen.dart';
import 'package:badminton_app/screens/add_players_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model/players_data.dart';
import 'screens/players_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PlayerData(),
      child: MaterialApp(
        home: PlayersScreen(),
      ),
    );
  }
}
