import 'package:flutter/material.dart';

// Here we design our appBar for mobile size
// we follow the screen size breakpoints defined in ecommerce.dart
class MobileAppBar extends StatelessWidget {
  const MobileAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
          "assets/logo.png",
        fit: BoxFit.contain,
      ),
      actions: [
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.search)
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.shopping_cart_rounded)
        ),
        IconButton(
            onPressed: (){},
            icon: Icon(Icons.more_vert)
        ),
      ],
    );
  }
}
