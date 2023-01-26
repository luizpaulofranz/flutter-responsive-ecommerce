import 'package:flutter/material.dart';

class ResponsivenessOrientation extends StatefulWidget {
  const ResponsivenessOrientation({Key? key}) : super(key: key);

  @override
  _ResponsivenessOrientationState createState() => _ResponsivenessOrientationState();
}

class _ResponsivenessOrientationState extends State<ResponsivenessOrientation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientação'),
      ),
      body: OrientationBuilder( // Just detects if the available screen is Landscape or Portrit, works on web too
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
