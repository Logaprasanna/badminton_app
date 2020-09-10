import 'package:flutter/material.dart';
import 'main_screen.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("images/5220.png"),
              fit: BoxFit.cover,
            )),
          ),
          Positioned(
            top: 320.0,
            left: 130.0,
            child: Container(
              child: Stack(
                children: [
                  Positioned(
                    top: 70.0,
                    left: 15.0,
                    child: Text(
                      'Kandasamy',
                      style:
                          TextStyle(fontSize: 35.0, fontFamily: 'Montserrat'),
                    ),
                  ),
                  Positioned(
                    top: 120.0,
                    left: 15.0,
                    child: Text(
                      'Aachari',
                      style:
                          TextStyle(fontSize: 35.0, fontFamily: 'Montserrat'),
                    ),
                  ),
                  Positioned(
                    top: 180.0,
                    left: 85.0,
                    child: Text(
                      'Family',
                      style:
                          TextStyle(fontSize: 20.0, fontFamily: 'Montserrat'),
                    ),
                  ),
                  Positioned(
                    top: 230.0,
                    left: 155.0,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MainScreen();
                        }));
                      },
                      child: CircleAvatar(
                        backgroundColor: Color(0xff15DD88),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(70.0))),
              height: 300.0,
              width: 250.0,
            ),
          )
        ],
      ),
    );
  }
}
