import 'package:flutter/material.dart';

class ResponsivenessWrap extends StatefulWidget {
  const ResponsivenessWrap({Key? key}) : super(key: key);

  @override
  _ResponsivenessWrapState createState() => _ResponsivenessWrapState();
}

class _ResponsivenessWrapState extends State<ResponsivenessWrap> {
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
        child: Wrap( // Break line atumatically if does not fit on the screen
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
