import 'package:flutter/material.dart';

/// Wrap widget diverge from Columns and Rows because we have 
/// auto break line here, if the content does not fit inside the wrap
/// it expands his size (break line) to comport the widgets
class ResponsiveWrap extends StatefulWidget {
  const ResponsiveWrap({Key? key}) : super(key: key);

  @override
  _ResponsiveWrapState createState() => _ResponsiveWrapState();
}

class _ResponsiveWrapState extends State<ResponsiveWrap> {
  @override
  Widget build(BuildContext context) {
    double height = 100;
    double width = 200;

    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Container(
        color: Colors.black26,
        width: MediaQuery.of(context).size.width,
        child: Wrap( // Break line automatically if does not fit on the screen
          alignment: WrapAlignment.center,
          runSpacing: 10, // rows spacing
          spacing: 10, // column spacing
          children: [
            Container(
              width: width,
              height: height,
              color: Colors.orange,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.green,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.purple,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.black,
            ),
            Container(
              width: width,
              height: height,
              color: Colors.yellow,
            )
          ],
        ),
      ),
    );
  }
}
