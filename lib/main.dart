import 'package:ecommerce/ecommerce.dart';
import 'package:ecommerce/responsiveness_examples/responsive_wrap.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,
      home: Ecommerce(),
    );
  }
}
