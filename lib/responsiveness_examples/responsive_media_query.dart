import 'package:flutter/material.dart';

/// We can use MediaQuery to get device's screen size and it's paddings
class ResponsiveMediaQuery extends StatefulWidget {
  const ResponsiveMediaQuery({Key? key}) : super(key: key);

  @override
  _ResponsiveMediaQueryState createState() => _ResponsiveMediaQueryState();
}

class _ResponsiveMediaQueryState extends State<ResponsiveMediaQuery> {
  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final heightStatusBar = MediaQuery.of(context).padding.top;
    final heightAppBar = AppBar().preferredSize.height;
    //final widthItem = height * 0.25;//100%
    final widthItem = width / 3;//500%

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsiveness'),
      ),
      body: Row(
        children: [
          Container(
            width: widthItem,
            height: 200,
            color: Colors.red,
            child: const Text('Responsiveness'),
          ),
          Container(
            width: widthItem,
            height: 200,
            color: Colors.black,
            child: const Text('Responsiveness'),
          ),
          Container(
            width: widthItem,
            height: 200,
            color: Colors.yellow,
            child: const Text('Responsiveness'),
          )
        ],
      ),
    );
  }
}
