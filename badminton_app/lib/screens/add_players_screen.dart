import 'package:badminton_app/constants.dart';
import 'package:badminton_app/model/player_list.dart';
import 'package:badminton_app/widgets/clear_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badminton_app/constants.dart';
import 'package:badminton_app/model/players_data.dart';
import 'package:badminton_app/widgets/check_cards.dart';

TextEditingController _controller = TextEditingController();

class AddPlayersScreen extends StatefulWidget {
  @override
  _AddPlayersScreenState createState() => _AddPlayersScreenState();
}

class _AddPlayersScreenState extends State<AddPlayersScreen> {
  String newText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xff07021A),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.keyboard_backspace,
                        color: Colors.blue,
                      ),
                      onPressed: () {
                        Navigator.of(context).pop(
                            Provider.of<PlayerData>(context, listen: false)
                                .playerData);
                      },
                    ),
                    Text(
                      'Back',
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
              ),
              Text(
                'Add Players',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontFamily: 'Montserrat'),
              ),
              SizedBox(
                width: 400.0,
                height: 30.0,
                child: Divider(
                  thickness: 1.5,
                  color: Color(0xff525274),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                constraints: BoxConstraints.tight(Size(400.0, 70.0)),
                child: TextField(
                  cursorColor: Color(0xffA8A3BE),
                  style: TextStyle(color: Color(0xffA8A3BE), fontSize: 20.0),
                  controller: _controller,
                  onChanged: (newValue) {
                    newText = newValue;
                  },
                  enabled: true,
                  decoration: InputDecoration(
                    suffix: IconButton(
                      onPressed: () {
                        _controller.clear();
                      },
                      icon: CircleAvatar(
                        radius: 13.0,
                        backgroundColor: Color(0xff939393),
                        child: Icon(
                          Icons.clear,
                          size: 25.0,
                          color: Color(0xff585179),
                        ),
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        Provider.of<PlayerData>(context, listen: false)
                            .changeString(newText);
                        _controller.clear();
                      },
                      icon: Container(
                          height: 100.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.all(
                                Radius.circular(5.0),
                              )),
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                          )),
                    ),
                    hintText: "New member......",
                    hintStyle: TextStyle(
                      fontSize: 20.0,
                      fontFamily: "Montserrat",
                      color: Color(
                        0xffA199C6,
                      ),
                    ),
                    filled: true,
                    fillColor: Color(0xff585179),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10.0),
                        ),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                child: PlayerList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
