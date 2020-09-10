import 'package:famtree_app/sivamalligachildren/hema.dart';
import 'package:famtree_app/sivamalligachildren/manjula.dart';
import 'package:famtree_app/sivamalligachildren/naveen.dart';
import 'package:famtree_app/widgets/name_card.dart';
import 'package:flutter/material.dart';
import 'package:famtree_app/widgets/white_card.dart';
import 'package:famtree_app/widgets/color_card.dart';

class SMScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEBEBEB),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 330.0, top: 30.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
          ),
          WhiteCard(
            fName: 'Sivaprakasam',
            wName: 'Malliga',
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    ColorCard(
                      hName: 'Ramkumar',
                      wName: 'Hemalatha',
                      image: 'images/hema.jpg',
                      color: Colors.blue,
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Hemalatha();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Chandrasekar',
                      wName: 'Manjula',
                      image: 'images/chitti-new.jpg',
                      color: Color(0xffFF6F6F),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Manjula();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Vijayalakshmi',
                      wName: 'Naveen',
                      image: 'images/naveen.jpg',
                      color: Color(0xff4747E3),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Naveen();
                        }));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
