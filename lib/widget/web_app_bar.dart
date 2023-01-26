import 'package:flutter/material.dart';

// here we design our appBar for large screens
// we follow the screen size breakpoints defined in ecommerce.dart
class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            "assets/logo.png",
            fit: BoxFit.contain,
          ),
          Expanded(child: Container()),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.shopping_cart_rounded)
          ),
          SizedBox(width: 10,),
          OutlinedButton(
            onPressed: (){},
            child: Text("Cadastrar"),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              primary: Colors.white,
            ),
          ),
          SizedBox(width: 10,),
          OutlinedButton(
            onPressed: (){},
            child: Text("Entrar"),
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.orange,
              primary: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
