import 'package:flutter/material.dart';

/// IntrinsicHeight and IntrinsicWidth widgets adds a size constraint to its child
/// Getting the size of the child, useful to make Rows or Columns adjust its size
/// according with its bigger component
class ResponsiveIntrinsicHeight extends StatefulWidget {
  const ResponsiveIntrinsicHeight({Key? key}) : super(key: key);

  @override
  _ResponsiveIntrinsicHeightState createState() => _ResponsiveIntrinsicHeightState();
}

class _ResponsiveIntrinsicHeightState extends State<ResponsiveIntrinsicHeight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A row with different height elements'),
      ),
      // IntrinsicHeight adds a height constraint with the size of its child
      // with that, we can make a Row have the height of its bigger child
      body: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 200,
              color: Colors.orange,
              child: const Text("Item 1"),
            ),
            Container(
              width: 200,
              color: Colors.green,
              child: const Text("Item 2  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut ex finibus, ullamcorper sapien ut, aliquam urna"),
            )
          ],
        ),
      ),
    );
  }
}
