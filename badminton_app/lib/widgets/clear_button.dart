import 'package:flutter/material.dart';

class ClearButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.only(bottom: 70.0, right: 10.0),
        child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0), side: BorderSide.none),
          color: Color(0xffD35555).withOpacity(0.5),
          onPressed: () {},
          child: Text(
            'Clear the List',
            style: TextStyle(
              color: Color(0xffD30000),
            ),
          ),
        ),
      ),
    );
  }
}
