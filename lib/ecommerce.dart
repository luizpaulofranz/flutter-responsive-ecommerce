import 'package:ecommerce/widget/mobile_app_bar.dart';
import 'package:ecommerce/widget/web_app_bar.dart';
import 'package:flutter/material.dart';

class Ecommerce extends StatefulWidget {
  const Ecommerce({Key? key}) : super(key: key);

  @override
  _EcommerceState createState() => _EcommerceState();
}

class _EcommerceState extends State<Ecommerce> {
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
                child: MobileAppBar(),
                preferredSize: Size(deviceWidth, appBarHeight))
            : PreferredSize(
                child: WebAppBar(),
                preferredSize: Size(deviceWidth, appBarHeight)),
      );
    });
  }
}
