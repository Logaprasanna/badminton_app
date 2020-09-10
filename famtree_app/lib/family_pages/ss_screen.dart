import 'package:famtree_app/logakamalachildren/chandra.dart';
import 'package:famtree_app/logakamalachildren/kala.dart';
import 'package:famtree_app/logakamalachildren/mano.dart';
import 'package:famtree_app/logakamalachildren/mohan.dart';
import 'package:famtree_app/shansaraschildren/anbu.dart';
import 'package:famtree_app/shansaraschildren/chandru.dart';
import 'package:famtree_app/shansaraschildren/indra.dart';
import 'package:famtree_app/shansaraschildren/kalyani.dart';
import 'package:famtree_app/shansaraschildren/suguna.dart';
import 'package:famtree_app/shansaraschildren/usha.dart';
import 'package:famtree_app/sivamalligachildren/hema.dart';
import 'package:famtree_app/sivamalligachildren/manjula.dart';
import 'package:famtree_app/sivamalligachildren/naveen.dart';
import 'package:famtree_app/widgets/name_card.dart';
import 'package:flutter/material.dart';
import 'package:famtree_app/widgets/white_card.dart';
import 'package:famtree_app/widgets/color_card.dart';

class SSScreen extends StatelessWidget {
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
            fName: 'Shanmugachari',
            wName: 'Saraswathi',
            wNameGap: 230.0,
            fontSize: 23.0,
            dotGap: 213.0,
          ),
          Expanded(
            child: ListView(
              children: [
                Column(
                  children: [
                    ColorCard(
                      hName: 'Prabakaran',
                      wName: 'Usha',
                      color: Color(0xffd9adad),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Usha();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Shanthi',
                      wName: 'Anbu',
                      color: Color(0xffb52b65),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Anbu();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Murugesan',
                      wName: 'Suguna',
                      color: Color(0xff68b0ab),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Suguna();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Sasi',
                      wName: 'Chandru',
                      color: Color(0xff56556e),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Chandru();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Anand Prabhu',
                      wName: 'Kalyani',
                      color: Colors.red,
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Kalyani();
                        }));
                      },
                    ),
                    ColorCard(
                      hName: 'Swaminathan',
                      wName: 'Indra',
                      color: Color(0xffffa36c),
                      onPress: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Indra();
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
