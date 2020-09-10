import 'package:famtree_app/data_provider/data.dart';
import 'package:famtree_app/family_pages/kd_screen.dart';
import 'package:famtree_app/family_pages/sm_screen.dart';
import 'package:famtree_app/family_pages/ss_screen.dart';
import 'package:flutter/material.dart';
import 'package:famtree_app/widgets/slidable_card.dart';
import 'package:famtree_app/widgets/names.dart';
import 'package:famtree_app/family_pages/lk_screen.dart';
import 'package:provider/provider.dart';

Names names = Names();

class Carroussel extends StatefulWidget {
  @override
  _CarrousselState createState() => new _CarrousselState();
}

class _CarrousselState extends State<Carroussel> {
  PageController controller;
  int currentpage = 0;

  List<Names> card = [
    Names(hName: 'Loganathachari', wName: 'Kamala ', image: 'images/LKFAM.jpg'),
    Names(
        hName: 'Shanmugachari',
        wName: 'Saraswathi ',
        image: 'images/SS-new.jpg'),
    Names(
        hName: 'Kuppachari',
        wName: 'Deivanai/Kasthuri',
        image: 'images/kuppacharifam.jpg'),
    Names(
        hName: 'Sivaprakasam',
        wName: 'Malliga',
        image: 'images/sivaMalliga.jpg')
  ];
  List<Widget> listItems = [
    LKScreen(),
    SSScreen(),
    KDScreen(),
    SMScreen(),
  ];

  @override
  initState() {
    super.initState();
    controller = new PageController(
      initialPage: currentpage,
      keepPage: false,
      viewportFraction: 0.5,
    );
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new Container(
          child: new PageView.builder(
            onPageChanged: (value) {
              setState(() {
                currentpage = value;
              });
            },
            controller: controller,
            itemBuilder: (context, index) {
              return new AnimatedBuilder(
                animation: controller,
                builder: (context, child) {
                  double value = 1.0;
                  if (controller.position.haveDimensions) {
                    value = controller.page - index;
                    value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
                  }

                  return new Center(
                    child: new SizedBox(
                      height: Curves.easeOut.transform(value) * 350,
                      width: Curves.easeOut.transform(value) * 210,
                      child: child,
                    ),
                  );
                },
                child: SlidableCard(
                    text1: card[index].hName,
                    text2: card[index].wName,
                    image: card[index].image,
                    onPress: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return listItems[index];
                      }));
                    }),
              );
            },
            itemCount: card.length,
          ),
        ),
      ),
    );
  }
}

// height: Curves.easeOut.transform(value) * 350,
// width: Curves.easeOut.transform(value) * 210,
//Provider.of<Data>(context)[index].functionAccess
