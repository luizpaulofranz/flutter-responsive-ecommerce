import 'package:flutter/material.dart';

class ResponsivenessRowCol extends StatefulWidget {
  const ResponsivenessRowCol({Key? key}) : super(key: key);

  @override
  _ResponsivenessRowColState createState() => _ResponsivenessRowColState();
}

class _ResponsivenessRowColState extends State<ResponsivenessRowCol> {
  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsiveness'),
      ),
      body: Column(
        children: [
          // Container(
          //   color: Colors.red,
          //   height: 200,
          // ),
          Expanded(
            flex: 2,
              child: Container(
                color: Colors.red,
              )
          ),
          Expanded(
              flex: 6,
              child: Row(
                children: [
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.pink,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.purple,
                      )
                  ),
                  Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.green,
                      )
                  )
                ],
              )
          ),
          Expanded(
            flex: 1,
              child: Container(
                color: Colors.yellow,
              )
          )
        ],
      ),
    );
  }
}
