import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:newtodoapp/model/main_class.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newString;
    return SingleChildScrollView(
      child: Container(
        color: Colors.black,
        child: Container(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: <Widget>[
                Text(
                  "Add Task",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold),
                ),
                TextField(
                  autofocus: true,
                  onChanged: (newValue) {
                    newString = newValue;
                  },
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          width: 4.0,
                          color: Color(0xffF4BC32),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              width: 4.0, color: Color(0xffF4BC32)))),
                ),
                SizedBox(
                  height: 100.0,
                ),
                FlatButton(
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                  color: Color(0xffF4BC32),
                  child: Text(
                    'ADD',
                    style: TextStyle(fontSize: 20.0, color: Colors.white),
                  ),
                  onPressed: () {
                    Provider.of<Tasks>(context).changeString(newString);
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0))),
        ),
      ),
    );
  }
}
