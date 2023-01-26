import 'package:flutter/material.dart';

/// We can use widgets like Expanded and its property flex to design responsive 
/// widgets combining these widgets.
class ResponsiveRowCol extends StatefulWidget {
  const ResponsiveRowCol({Key? key}) : super(key: key);

  @override
  _ResponsiveRowColState createState() => _ResponsiveRowColState();
}

class _ResponsiveRowColState extends State<ResponsiveRowCol> {
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
