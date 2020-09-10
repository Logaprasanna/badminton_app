import 'package:famtree_app/logakamalachildren/chandra.dart';
import 'package:famtree_app/logakamalachildren/kala.dart';
import 'package:famtree_app/logakamalachildren/mano.dart';
import 'package:famtree_app/logakamalachildren/mohan.dart';
import 'package:famtree_app/sivamalligachildren/hema.dart';
import 'package:famtree_app/sivamalligachildren/manjula.dart';
import 'package:famtree_app/sivamalligachildren/naveen.dart';
import 'package:famtree_app/widgets/name_card.dart';
import 'package:flutter/material.dart';
import 'package:famtree_app/widgets/white_card.dart';
import 'package:famtree_app/widgets/color_card.dart';

class LKScreen extends StatelessWidget {
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
            fName: 'Loganathachari',
            wName: 'Kamala',
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    ColorCard(
                      hName: 'Chandra',
                      wName: 'Chandra',
                      color: Color(0xffe89f71),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Chandra();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Jeya',
                      wName: 'Mohan',
                      color: Color(0xff4e89ae),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Mohan();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Naveen',
                      wName: 'Mano',
                      color: Color(0xff81b214),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Mano();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Kala',
                      wName: 'Kala',
                      color: Colors.amber,
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Kala();
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
