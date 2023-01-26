import 'package:flutter/material.dart';

/// We can use OrientationBuilder to detect if the screen size is portrait or landscape
class ResponsiveOrientation extends StatefulWidget {
  const ResponsiveOrientation({Key? key}) : super(key: key);

  @override
  _ResponsiveOrientationState createState() => _ResponsiveOrientationState();
}

class _ResponsiveOrientationState extends State<ResponsiveOrientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientação'),
      ),
      body: OrientationBuilder( // Just detects if the available screen is Landscape or Portrait, works on web too
        builder: (context, orientation){
          // return Container(
          //   child: orientation == Orientation.portrait
          //     ? Text('Portraint')
          //     : Text('Landscape')
          // );

          return GridView.count(
              crossAxisCount: orientation == Orientation.portrait ? 2 : 4 ,
              children: [
                Container(color: Colors.red,),
                Container(color: Colors.green,),
                Container(color: Colors.orange,),
                Container(color: Colors.blue,),
                Container(color: Colors.purple,),
                Container(color: Colors.yellow,),
              ],
          );
        },
      ),
    );
  }
}
