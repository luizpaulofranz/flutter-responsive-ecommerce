import 'package:flutter/material.dart';

/// We can use LayoutBuilder to capture the constraints of a specific point of our app,
/// LayoutBuilder returns us the available size in the place where it is on widgets tree
class ResponsiveLayoutBuilder extends StatefulWidget {
  const ResponsiveLayoutBuilder({Key? key}) : super(key: key);

  @override
  ResponsiveLayoutBuilderState createState() => ResponsiveLayoutBuilderState();
}

class ResponsiveLayoutBuilderState extends State<ResponsiveLayoutBuilder> {
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

            // Here we can create our breakpoints
            if( largura < 600 ){//smartphone
              return Text("Smartphone");
            }else if( largura < 960 ) { //smartphones and tablets
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
