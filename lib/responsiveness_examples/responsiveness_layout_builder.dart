import 'package:flutter/material.dart';

class ResponsivenessLayoutBuilder extends StatefulWidget {
  const ResponsivenessLayoutBuilder({Key? key}) : super(key: key);

  @override
  ResponsivenessLayoutBuilderState createState() => ResponsivenessLayoutBuilderState();
}

class ResponsivenessLayoutBuilderState extends State<ResponsivenessLayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        //width: 300,
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: LayoutBuilder(
          builder: (context, constraint){

            var largura = constraint.maxWidth;
            print("width: $largura");

            if( largura < 600 ){//celular
              return Text("Smartphone");
            }else if( largura < 960 ) { //celular maiores e tablets
              return Text("Smartphone & Tablets");
            }else{
              return Text("Big screens");
            }
          },
        ),
      ),
    );
  }
}
