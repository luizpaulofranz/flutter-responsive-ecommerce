import 'package:flutter/material.dart';

/// Here we can see how to use FractionallySizedBox, another responsive widget
/// the only thing is that FractionallySizedBox could not be used inside rows or columns
/// we need a size constraint to limit it.
class ResponsiveFractionallySizedBox extends StatefulWidget {
  const ResponsiveFractionallySizedBox({Key? key}) : super(key: key);

  @override
  _ResponsiveFractionallySizedBoxState createState() => _ResponsiveFractionallySizedBoxState();
}

class _ResponsiveFractionallySizedBoxState extends State<ResponsiveFractionallySizedBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proportional sizes'),
      ),
      body: Container(
        color: Colors.orange,
        child: const FractionallySizedBox(
          widthFactor: 0.50, //50% of screen width
          heightFactor: 0.50,
          alignment: Alignment.topLeft,
          child: Text("This will have a proportional size according to the screen size"),
        ),
      ),
    );
  }
}
