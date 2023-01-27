import 'package:device_preview/device_preview.dart';
import 'package:ecommerce/ecommerce.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    /// This widget emulates several devices at one place
    /// Good only for dev mode
    DevicePreview(
      builder: (context) {
        return const MyApp();
      },
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //DevicePreview needs these two extra confs here
      builder: DevicePreview.appBuilder,
      locale: DevicePreview.locale(context),

      title: 'Flutter Web',
      debugShowCheckedModeBanner: false,
      home: Ecommerce(),
      // home: ResponsiveTexts(),
    );
  }
}
