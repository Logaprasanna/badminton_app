import 'package:badminton_app/model/players_data.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:badminton_app/model/players.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CheckCards extends StatelessWidget {
  final String name;
  final bool isSelected;
  final Function callBack;
  CheckCards({this.name, this.isSelected = false, this.callBack});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Stack(
        children: [
          Positioned(
            left: 25.0,
            top: 17.0,
            child: Center(
              child: GestureDetector(
                onTap: callBack,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      color: Colors.yellow),
                  child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: isSelected
                        ? Icon(
                            Icons.fiber_manual_record,
                            size: 30.0,
                            color: Color(0xff585179),
                          )
                        : Icon(
                            Icons.stop,
                            size: 30.0,
                            color: Color(0xff585179),
                          ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 80.0,
            top: 22.0,
            child: Text(
              '$name',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                  color: Colors.white,
                  fontFamily: 'Montserrat'),
            ),
          ),
        ],
      ),
      height: 70.0,
      width: 500.0,
      decoration: BoxDecoration(
          color: isSelected ? Color(0xff21213C) : Color(0xff585179),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
