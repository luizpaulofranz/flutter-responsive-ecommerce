import 'package:ecommerce/widget/mobile_app_bar.dart';
import 'package:ecommerce/widget/product_item.dart';
import 'package:ecommerce/widget/web_app_bar.dart';
import 'package:flutter/material.dart';

class Ecommerce extends StatefulWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  _EcommerceState createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
  int _adjustGridViewPerScreenSize(double screenWidth) {
    int columns = 2;
    if (screenWidth <= 600) {
      columns = 2;
    } else if (screenWidth <= 960) {
      columns = 4;
    } else {
      columns = 6;
    }
    return columns;
  }

  @override
  Widget build(BuildContext context) {
    // Here we use Layout Builder to manually create our breakpoints and load different widgets
    // according with the screen size
    return LayoutBuilder(builder: (context, constraint) {
      var deviceWidth = constraint.maxWidth;
      var appBarHeight = AppBar().preferredSize.height;

      return Scaffold(
        appBar: deviceWidth < 600
            ? PreferredSize(
                preferredSize: Size(deviceWidth, appBarHeight),
                child: const MobileAppBar(),
              )
            : PreferredSize(
                preferredSize: Size(deviceWidth, appBarHeight),
                child: const WebAppBar(),
              ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.count(
            crossAxisCount: _adjustGridViewPerScreenSize(deviceWidth),
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: [
              ProductItem("Kit Multimídia", "2.200,00", "p1.jpg"),
              ProductItem("Pneu Goodyear aro 16", "800,00", "p2.jpg"),
              ProductItem("Samsung 9", "4.100,00", "p3.jpg"),
              ProductItem("Samsung Edge", "2.150,90", "p4.jpg"),
              ProductItem("Galaxy 10", "6.200,00", "p5.jpg"),
              ProductItem("Iphone 10", "1.900,20", "p6.jpg"),
              ProductItem("Kit Multimídia", "2.200,00", "p1.jpg"),
              ProductItem("Pneu Goodyear aro 16", "800,00", "p2.jpg"),
              ProductItem("Samsung 9", "4.100,00", "p3.jpg"),
              ProductItem("Samsung Edge", "2.150,90", "p4.jpg"),
              ProductItem("Galaxy 10", "6.200,00", "p5.jpg"),
              ProductItem("Iphone 10", "1.900,20", "p6.jpg"),
            ],
          ),
        ),
      );
    });
  }
}
